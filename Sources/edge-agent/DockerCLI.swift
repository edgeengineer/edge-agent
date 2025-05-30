import Shell

/// Represents the Docker CLI interface for managing container images and running containers.
public struct DockerCLI: Sendable {
    public let command: String

    public init(command: String = "docker") {
        self.command = command
    }

    /// Options for the Docker run command.
    public enum RunOption: Sendable {
        /// Remove the container when it exits.
        case rm

        /// Keep STDIN open even if not attached.
        case interactive

        /// Allocate a pseudo-TTY.
        case tty

        /// Publish a container's port to the host.
        case publishPort(hostPort: UInt16, containerPort: UInt16)

        /// Add Linux capabilities.
        case capAdd(String)

        /// Security options.
        case securityOpt(String)

        /// Connect a container to a network
        case network(String)

        /// Assign a name to the container
        case name(String)

        /// Run container in background and print container ID
        case detach

        /// The arguments to pass to the Docker run command.
        var arguments: [String] {
            switch self {
            case .rm:
                return ["--rm"]
            case .interactive:
                return ["-i"]
            case .tty:
                return ["-t"]
            case .publishPort(let hostPort, let containerPort):
                return ["-p", "\(hostPort):\(containerPort)"]
            case .capAdd(let capability):
                return ["--cap-add=\(capability)"]
            case .securityOpt(let option):
                return ["--security-opt", option]
            case .network(let network):
                return ["--network", network]
            case .name(let name):
                return ["--name", name]
            case .detach:
                return ["--detach"]
            }
        }
    }

    /// Options for the Docker rm command.
    public enum RmOption: Sendable {
        /// Force the removal of a running container (uses SIGKILL).
        case force

        /// The arguments to pass to the Docker rm command.
        var arguments: [String] {
            switch self {
            case .force:
                return ["--force"]
            }
        }
    }

    /// Load a Docker image from a tar archive.
    @discardableResult
    public func load(filePath: String) async throws -> String {
        let arguments = [command, "load", "-i", filePath]
        return try await Shell.run(arguments)
    }

    /// Kill a Docker container.
    @discardableResult
    public func rm(options: [RmOption] = [], container: String) async throws -> String {
        let arguments = [command, "rm"] + options.flatMap(\.arguments) + [container]
        return try await Shell.run(arguments)
    }

    /// Run a Docker container.
    @discardableResult
    public func run(
        options: [RunOption] = [],
        image: String,
        command: [String] = []
    ) async throws -> String {
        let arguments = [self.command, "run"] + options.flatMap(\.arguments) + [image] + command
        return try await Shell.run(arguments)
    }
}
