// DO NOT EDIT.
// swift-format-ignore-file
// swiftlint:disable all
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: github.com/containerd/containerd/api/types/transfer/registry.proto
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

public enum Containerd_Types_Transfer_HTTPDebug: SwiftProtobuf.Enum, Swift.CaseIterable {
  public typealias RawValue = Int
  case disabled // = 0

  /// Enable HTTP debugging
  case debug // = 1

  /// Enable HTTP requests tracing
  case trace // = 2

  /// Enable both HTTP debugging and requests tracing
  case both // = 3
  case UNRECOGNIZED(Int)

  public init() {
    self = .disabled
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .disabled
    case 1: self = .debug
    case 2: self = .trace
    case 3: self = .both
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .disabled: return 0
    case .debug: return 1
    case .trace: return 2
    case .both: return 3
    case .UNRECOGNIZED(let i): return i
    }
  }

  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static let allCases: [Containerd_Types_Transfer_HTTPDebug] = [
    .disabled,
    .debug,
    .trace,
    .both,
  ]

}

public enum Containerd_Types_Transfer_AuthType: SwiftProtobuf.Enum, Swift.CaseIterable {
  public typealias RawValue = Int
  case none // = 0

  /// CREDENTIALS is used to exchange username/password for access token
  /// using an oauth or "Docker Registry Token" server
  case credentials // = 1

  /// REFRESH is used to exchange secret for access token using an oauth
  /// or "Docker Registry Token" server
  case refresh // = 2

  /// HEADER is used to set the HTTP Authorization header to secret
  /// directly for the registry.
  /// Value should be `<auth-scheme> <authorization-parameters>`
  case header // = 3
  case UNRECOGNIZED(Int)

  public init() {
    self = .none
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .none
    case 1: self = .credentials
    case 2: self = .refresh
    case 3: self = .header
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .none: return 0
    case .credentials: return 1
    case .refresh: return 2
    case .header: return 3
    case .UNRECOGNIZED(let i): return i
    }
  }

  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static let allCases: [Containerd_Types_Transfer_AuthType] = [
    .none,
    .credentials,
    .refresh,
    .header,
  ]

}

public struct Containerd_Types_Transfer_OCIRegistry: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var reference: String = String()

  public var resolver: Containerd_Types_Transfer_RegistryResolver {
    get {return _resolver ?? Containerd_Types_Transfer_RegistryResolver()}
    set {_resolver = newValue}
  }
  /// Returns true if `resolver` has been explicitly set.
  public var hasResolver: Bool {return self._resolver != nil}
  /// Clears the value of `resolver`. Subsequent reads from it will return its default value.
  public mutating func clearResolver() {self._resolver = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _resolver: Containerd_Types_Transfer_RegistryResolver? = nil
}

public struct Containerd_Types_Transfer_RegistryResolver: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// auth_stream is used to refer to a stream which auth callbacks may be
  /// made on.
  public var authStream: String = String()

  /// Headers
  public var headers: Dictionary<String,String> = [:]

  public var hostDir: String = String()

  /// Force skip verify
  /// CA callback? Client TLS callback?
  public var defaultScheme: String = String()

  /// Whether to debug/trace HTTP requests to OCI registry.
  public var httpDebug: Containerd_Types_Transfer_HTTPDebug = .disabled

  /// Stream ID to use for HTTP logs (when logs are streamed to client).
  /// When empty, logs are written to containerd logs.
  public var logsStream: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// AuthRequest is sent as a callback on a stream
public struct Containerd_Types_Transfer_AuthRequest: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// host is the registry host
  public var host: String = String()

  /// reference is the namespace and repository name requested from the registry
  public var reference: String = String()

  /// wwwauthenticate is the HTTP WWW-Authenticate header values returned from the registry
  public var wwwauthenticate: [String] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Containerd_Types_Transfer_AuthResponse: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var authType: Containerd_Types_Transfer_AuthType = .none

  public var secret: String = String()

  public var username: String = String()

  /// TODO: Stream error
  public var expireAt: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _expireAt ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_expireAt = newValue}
  }
  /// Returns true if `expireAt` has been explicitly set.
  public var hasExpireAt: Bool {return self._expireAt != nil}
  /// Clears the value of `expireAt`. Subsequent reads from it will return its default value.
  public mutating func clearExpireAt() {self._expireAt = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _expireAt: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "containerd.types.transfer"

extension Containerd_Types_Transfer_HTTPDebug: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "DISABLED"),
    1: .same(proto: "DEBUG"),
    2: .same(proto: "TRACE"),
    3: .same(proto: "BOTH"),
  ]
}

extension Containerd_Types_Transfer_AuthType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "NONE"),
    1: .same(proto: "CREDENTIALS"),
    2: .same(proto: "REFRESH"),
    3: .same(proto: "HEADER"),
  ]
}

extension Containerd_Types_Transfer_OCIRegistry: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".OCIRegistry"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "reference"),
    2: .same(proto: "resolver"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.reference) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._resolver) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.reference.isEmpty {
      try visitor.visitSingularStringField(value: self.reference, fieldNumber: 1)
    }
    try { if let v = self._resolver {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Containerd_Types_Transfer_OCIRegistry, rhs: Containerd_Types_Transfer_OCIRegistry) -> Bool {
    if lhs.reference != rhs.reference {return false}
    if lhs._resolver != rhs._resolver {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Containerd_Types_Transfer_RegistryResolver: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".RegistryResolver"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "auth_stream"),
    2: .same(proto: "headers"),
    3: .standard(proto: "host_dir"),
    4: .standard(proto: "default_scheme"),
    5: .standard(proto: "http_debug"),
    6: .standard(proto: "logs_stream"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.authStream) }()
      case 2: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: &self.headers) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.hostDir) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.defaultScheme) }()
      case 5: try { try decoder.decodeSingularEnumField(value: &self.httpDebug) }()
      case 6: try { try decoder.decodeSingularStringField(value: &self.logsStream) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.authStream.isEmpty {
      try visitor.visitSingularStringField(value: self.authStream, fieldNumber: 1)
    }
    if !self.headers.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: self.headers, fieldNumber: 2)
    }
    if !self.hostDir.isEmpty {
      try visitor.visitSingularStringField(value: self.hostDir, fieldNumber: 3)
    }
    if !self.defaultScheme.isEmpty {
      try visitor.visitSingularStringField(value: self.defaultScheme, fieldNumber: 4)
    }
    if self.httpDebug != .disabled {
      try visitor.visitSingularEnumField(value: self.httpDebug, fieldNumber: 5)
    }
    if !self.logsStream.isEmpty {
      try visitor.visitSingularStringField(value: self.logsStream, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Containerd_Types_Transfer_RegistryResolver, rhs: Containerd_Types_Transfer_RegistryResolver) -> Bool {
    if lhs.authStream != rhs.authStream {return false}
    if lhs.headers != rhs.headers {return false}
    if lhs.hostDir != rhs.hostDir {return false}
    if lhs.defaultScheme != rhs.defaultScheme {return false}
    if lhs.httpDebug != rhs.httpDebug {return false}
    if lhs.logsStream != rhs.logsStream {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Containerd_Types_Transfer_AuthRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".AuthRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "host"),
    2: .same(proto: "reference"),
    3: .same(proto: "wwwauthenticate"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.host) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.reference) }()
      case 3: try { try decoder.decodeRepeatedStringField(value: &self.wwwauthenticate) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.host.isEmpty {
      try visitor.visitSingularStringField(value: self.host, fieldNumber: 1)
    }
    if !self.reference.isEmpty {
      try visitor.visitSingularStringField(value: self.reference, fieldNumber: 2)
    }
    if !self.wwwauthenticate.isEmpty {
      try visitor.visitRepeatedStringField(value: self.wwwauthenticate, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Containerd_Types_Transfer_AuthRequest, rhs: Containerd_Types_Transfer_AuthRequest) -> Bool {
    if lhs.host != rhs.host {return false}
    if lhs.reference != rhs.reference {return false}
    if lhs.wwwauthenticate != rhs.wwwauthenticate {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Containerd_Types_Transfer_AuthResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".AuthResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "authType"),
    2: .same(proto: "secret"),
    3: .same(proto: "username"),
    4: .standard(proto: "expire_at"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.authType) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.secret) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.username) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._expireAt) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if self.authType != .none {
      try visitor.visitSingularEnumField(value: self.authType, fieldNumber: 1)
    }
    if !self.secret.isEmpty {
      try visitor.visitSingularStringField(value: self.secret, fieldNumber: 2)
    }
    if !self.username.isEmpty {
      try visitor.visitSingularStringField(value: self.username, fieldNumber: 3)
    }
    try { if let v = self._expireAt {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Containerd_Types_Transfer_AuthResponse, rhs: Containerd_Types_Transfer_AuthResponse) -> Bool {
    if lhs.authType != rhs.authType {return false}
    if lhs.secret != rhs.secret {return false}
    if lhs.username != rhs.username {return false}
    if lhs._expireAt != rhs._expireAt {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
