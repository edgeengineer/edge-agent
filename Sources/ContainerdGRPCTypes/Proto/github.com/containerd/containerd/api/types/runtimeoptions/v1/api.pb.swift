// DO NOT EDIT.
// swift-format-ignore-file
// swiftlint:disable all
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: github.com/containerd/containerd/api/types/runtimeoptions/v1/api.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

/// To regenerate api.pb.go run `make protos`

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct Runtimeoptions_V1_Options: @unchecked Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// TypeUrl specifies the type of the content inside the config file.
  public var typeURL: String = String()

  /// ConfigPath specifies the filesystem location of the config file
  /// used by the runtime.
  public var configPath: String = String()

  /// Blob specifies an in-memory TOML blob passed from containerd's configuration section
  /// for this runtime. This will be used if config_path is not specified.
  public var configBody: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "runtimeoptions.v1"

extension Runtimeoptions_V1_Options: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Options"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "type_url"),
    2: .standard(proto: "config_path"),
    3: .standard(proto: "config_body"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.typeURL) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.configPath) }()
      case 3: try { try decoder.decodeSingularBytesField(value: &self.configBody) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.typeURL.isEmpty {
      try visitor.visitSingularStringField(value: self.typeURL, fieldNumber: 1)
    }
    if !self.configPath.isEmpty {
      try visitor.visitSingularStringField(value: self.configPath, fieldNumber: 2)
    }
    if !self.configBody.isEmpty {
      try visitor.visitSingularBytesField(value: self.configBody, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Runtimeoptions_V1_Options, rhs: Runtimeoptions_V1_Options) -> Bool {
    if lhs.typeURL != rhs.typeURL {return false}
    if lhs.configPath != rhs.configPath {return false}
    if lhs.configBody != rhs.configBody {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
