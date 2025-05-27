import Crypto
import Foundation
import Logging
import NIOFoundationCompat
import Shell
import _NIOFileSystem

public struct ContainerLayer: Sendable {
    let path: URL
    let hash: String
}

public func buildDockerContainerLayers(
    image: ContainerImageSpec,
    imageName: String,
    outputDirectoryPath: URL
) async throws -> [ContainerLayer] {
    var layers = [ContainerLayer]()

    for (index, layer) in image.layers.enumerated() {
        let layerTarPath = outputDirectoryPath.appendingPathComponent("layer\(index).tar")

        switch layer.content {
        case .files(let files):
            // Create a directory for this layer
            let layerDir = outputDirectoryPath.appendingPathComponent("layer\(index)")
            try FileManager.default.createDirectory(at: layerDir, withIntermediateDirectories: true)

            // Create each file in the layer
            for file in files {
                // Handle absolute paths in container file system by removing the leading slash
                var relativePath = file.destination
                if relativePath.hasPrefix("/") {
                    relativePath = String(relativePath.dropFirst())
                }

                let destinationURL = layerDir.appendingPathComponent(relativePath)

                // Ensure the parent directory exists with proper permissions
                let parentDir = destinationURL.deletingLastPathComponent()
                try FileManager.default.createDirectory(
                    at: parentDir,
                    withIntermediateDirectories: true,
                    attributes: [FileAttributeKey.posixPermissions: 0o755]
                )

                // Copy the file
                try FileManager.default.copyItem(at: file.source, to: destinationURL)

                // Set permissions if specified
                if let permissions = file.permissions {
                    try FileManager.default.setAttributes(
                        [.posixPermissions: permissions],
                        ofItemAtPath: destinationURL.path
                    )
                }
            }

            // Create a tarball from the directory
            try await createTarball(from: layerDir, to: layerTarPath)

        case .tarball(let tarballURL):
            // Use the tarball directly
            try FileManager.default.copyItem(at: tarballURL, to: layerTarPath)
        }

        // If the layer has a predefined diffID, use it
        if let diffID = layer.diffID, diffID.starts(with: "sha256:") {
            let layerSHA = diffID.replacingOccurrences(of: "sha256:", with: "")
            layers.append(ContainerLayer(path: layerTarPath, hash: layerSHA))
        } else {
            let layer = try await FileSystem.shared.withFileHandle(
                forReadingAt: FilePath(layerTarPath.path)
            ) { fileHandle in
                var sha = SHA256()
                for try await chunk in fileHandle.readChunks() {
                    sha.update(data: chunk.readableBytesView)
                }
                let layerSHA = sha.finalize()
                    .map { String(format: "%02x", $0) }
                    .joined()

                return ContainerLayer(path: layerTarPath, hash: layerSHA)
            }
            layers.append(layer)
        }
    }

    return layers
}

/// Builds a Docker-compatible container image from the given image specification.
/// The image is saved to the given path.
///
/// This currently follows the format expected by `docker load`, which is not
/// the same as the OCI Image Format Specification.
public func buildDockerContainerImage(
    image: ContainerImageSpec,
    imageName: String,
    outputPath: String
) async throws {
    let logger = Logger(label: "edgeengineer.container-builder")
    // TODO: Implement this using the OCI Image Format Specification instead of Docker's format?
    // TODO: Write directly to a tar file instead of using a temporary directory
    let tempDir = FileManager.default.temporaryDirectory.appendingPathComponent(UUID().uuidString)
    try FileManager.default.createDirectory(at: tempDir, withIntermediateDirectories: true)

    logger.info("Building container layers")
    let layers = try await buildDockerContainerLayers(
        image: image,
        imageName: imageName,
        outputDirectoryPath: tempDir
    )

    // Create config.json
    let dateFormatter = ISO8601DateFormatter()
    let config = DockerConfig(
        architecture: image.architecture,
        created: dateFormatter.string(from: image.created),
        os: image.os,
        config: ContainerConfig(
            Cmd: image.cmd,
            Env: image.env,
            WorkingDir: image.workingDir
        ),
        rootfs: RootFS(
            type: "layers",
            diff_ids: layers.map { "sha256:\($0.hash)" }
        )
    )

    // Serialize and save config
    logger.info("Creating config.json")
    let configData = try JSONEncoder().encode(config)
    let configPath = tempDir.appendingPathComponent("config.json")
    try configData.write(to: configPath)
    let configSHA = sha256(data: configData)

    // Create image manifest
    logger.info("Creating image manifest")
    let imageTag = "latest"
    let repositories = [
        imageName: [
            imageTag: configSHA
        ]
    ]
    let repositoriesData = try JSONEncoder().encode(repositories)
    let repositoriesPath = tempDir.appendingPathComponent("repositories")
    try repositoriesData.write(to: repositoriesPath)

    // Create final container image tarball
    logger.info("Creating final container image tarball")
    let imageDir = tempDir.appendingPathComponent("image")
    try FileManager.default.createDirectory(at: imageDir, withIntermediateDirectories: true)

    // Copy layers and config to image directory
    for layer in layers {
        let destinationPath = imageDir.appendingPathComponent("\(layer.hash).tar")
        try FileManager.default.copyItem(at: layer.path, to: destinationPath)
    }

    let imageConfigPath = imageDir.appendingPathComponent("\(configSHA).json")
    try configData.write(to: imageConfigPath)

    // Copy repositories file to image directory
    let imageRepositoriesPath = imageDir.appendingPathComponent("repositories")
    try repositoriesData.write(to: imageRepositoriesPath)

    // manifest.json
    let manifest: [DockerManifestEntry] = [
        DockerManifestEntry(
            Config: "\(configSHA).json",
            RepoTags: ["\(imageName):\(imageTag)"],
            Layers: layers.map { "\($0.hash).tar" }
        )
    ]

    let manifestData = try JSONEncoder().encode(manifest)
    let manifestPath = imageDir.appendingPathComponent("manifest.json")
    try manifestData.write(to: manifestPath)

    try await createTarball(from: imageDir, to: URL(fileURLWithPath: outputPath))

    try FileManager.default.removeItem(at: tempDir)
}

// Calculate SHA256 hash using Swift Crypto
private func sha256(data: Data) -> String {
    let digest = SHA256.hash(data: data)
    return digest.map { String(format: "%02x", $0) }.joined()
}

/// Creates a tarball from the given source directory using /usr/bin/tar.
///
/// - Parameter sourceDir: The directory to create a tarball from.
/// - Parameter destinationURL: The URL to save the tarball to.
/// - Throws: An error if the tarball cannot be created.
private func createTarball(from sourceDir: URL, to destinationURL: URL) async throws {
    try await Shell.run(
        ["/usr/bin/tar", "-cf", destinationURL.path, "-C", sourceDir.path, "."]
    )
}

struct ContainerConfig: Codable {
    var Cmd: [String]
    var Env: [String]
    var WorkingDir: String
}

struct RootFS: Codable {
    var type: String
    var diff_ids: [String]
}

struct DockerConfig: Codable {
    var architecture: String
    var created: String
    var os: String
    var config: ContainerConfig
    var rootfs: RootFS
}

struct DockerManifestEntry: Codable {
    var Config: String
    var RepoTags: [String]
    var Layers: [String]
}
