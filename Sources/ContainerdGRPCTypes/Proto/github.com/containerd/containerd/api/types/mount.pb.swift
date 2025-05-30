// DO NOT EDIT.
// swift-format-ignore-file
// swiftlint:disable all
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: github.com/containerd/containerd/api/types/mount.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

//
//Copyright The containerd Authors.
//
//Licensed under the Apache License, Version 2.0 (the "License");
//you may not use this file except in compliance with the License.
//You may obtain a copy of the License at
//
//http://www.apache.org/licenses/LICENSE-2.0
//
//Unless required by applicable law or agreed to in writing, software
//distributed under the License is distributed on an "AS IS" BASIS,
//WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//See the License for the specific language governing permissions and
//limitations under the License.

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

/// Mount describes mounts for a container.
///
/// This type is the lingua franca of ContainerD. All services provide mounts
/// to be used with the container at creation time.
///
/// The Mount type follows the structure of the mount syscall, including a type,
/// source, target and options.
public struct Containerd_Types_Mount: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Type defines the nature of the mount.
  public var type: String = String()

  /// Source specifies the name of the mount. Depending on mount type, this
  /// may be a volume name or a host path, or even ignored.
  public var source: String = String()

  /// Target path in container
  public var target: String = String()

  /// Options specifies zero or more fstab style mount options.
  public var options: [String] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "containerd.types"

extension Containerd_Types_Mount: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Mount"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .same(proto: "source"),
    3: .same(proto: "target"),
    4: .same(proto: "options"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.type) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.source) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.target) }()
      case 4: try { try decoder.decodeRepeatedStringField(value: &self.options) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.type.isEmpty {
      try visitor.visitSingularStringField(value: self.type, fieldNumber: 1)
    }
    if !self.source.isEmpty {
      try visitor.visitSingularStringField(value: self.source, fieldNumber: 2)
    }
    if !self.target.isEmpty {
      try visitor.visitSingularStringField(value: self.target, fieldNumber: 3)
    }
    if !self.options.isEmpty {
      try visitor.visitRepeatedStringField(value: self.options, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Containerd_Types_Mount, rhs: Containerd_Types_Mount) -> Bool {
    if lhs.type != rhs.type {return false}
    if lhs.source != rhs.source {return false}
    if lhs.target != rhs.target {return false}
    if lhs.options != rhs.options {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
