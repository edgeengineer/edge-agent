// DO NOT EDIT.
// swift-format-ignore-file
// swiftlint:disable all
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: github.com/containerd/containerd/api/services/introspection/v1/introspection.proto
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

public struct Containerd_Services_Introspection_V1_Plugin: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Type defines the type of plugin.
  ///
  /// See package plugin for a list of possible values. Non core plugins may
  /// define their own values during registration.
  public var type: String = String()

  /// ID identifies the plugin uniquely in the system.
  public var id: String = String()

  /// Requires lists the plugin types required by this plugin.
  public var requires: [String] = []

  /// Platforms enumerates the platforms this plugin will support.
  ///
  /// If values are provided here, the plugin will only be operable under the
  /// provided platforms.
  ///
  /// If this is empty, the plugin will work across all platforms.
  ///
  /// If the plugin prefers certain platforms over others, they should be
  /// listed from most to least preferred.
  public var platforms: [Containerd_Types_Platform] = []

  /// Exports allows plugins to provide values about state or configuration to
  /// interested parties.
  ///
  /// One example is exposing the configured path of a snapshotter plugin.
  public var exports: Dictionary<String,String> = [:]

  /// Capabilities allows plugins to communicate feature switches to allow
  /// clients to detect features that may not be on be default or may be
  /// different from version to version.
  ///
  /// Use this sparingly.
  public var capabilities: [String] = []

  /// InitErr will be set if the plugin fails initialization.
  ///
  /// This means the plugin may have been registered but a non-terminal error
  /// was encountered during initialization.
  ///
  /// Plugins that have this value set cannot be used.
  public var initErr: Google_Rpc_Status {
    get {return _initErr ?? Google_Rpc_Status()}
    set {_initErr = newValue}
  }
  /// Returns true if `initErr` has been explicitly set.
  public var hasInitErr: Bool {return self._initErr != nil}
  /// Clears the value of `initErr`. Subsequent reads from it will return its default value.
  public mutating func clearInitErr() {self._initErr = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _initErr: Google_Rpc_Status? = nil
}

public struct Containerd_Services_Introspection_V1_PluginsRequest: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Filters contains one or more filters using the syntax defined in the
  /// containerd filter package.
  ///
  /// The returned result will be those that match any of the provided
  /// filters. Expanded, plugins that match the following will be
  /// returned:
  ///
  ///	filters[0] or filters[1] or ... or filters[n-1] or filters[n]
  ///
  /// If filters is zero-length or nil, all items will be returned.
  public var filters: [String] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Containerd_Services_Introspection_V1_PluginsResponse: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var plugins: [Containerd_Services_Introspection_V1_Plugin] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Containerd_Services_Introspection_V1_ServerResponse: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var uuid: String = String()

  public var pid: UInt64 = 0

  /// PID namespace, such as 4026531836
  public var pidns: UInt64 = 0

  public var deprecations: [Containerd_Services_Introspection_V1_DeprecationWarning] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Containerd_Services_Introspection_V1_DeprecationWarning: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: String = String()

  public var message: String = String()

  public var lastOccurrence: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _lastOccurrence ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_lastOccurrence = newValue}
  }
  /// Returns true if `lastOccurrence` has been explicitly set.
  public var hasLastOccurrence: Bool {return self._lastOccurrence != nil}
  /// Clears the value of `lastOccurrence`. Subsequent reads from it will return its default value.
  public mutating func clearLastOccurrence() {self._lastOccurrence = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _lastOccurrence: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

public struct Containerd_Services_Introspection_V1_PluginInfoRequest: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var type: String = String()

  public var id: String = String()

  /// Options may be used to request extra dynamic information from
  /// a plugin.
  /// This object is determined by the plugin and the plugin may return
  /// NotImplemented or InvalidArgument if it is not supported
  public var options: SwiftProtobuf.Google_Protobuf_Any {
    get {return _options ?? SwiftProtobuf.Google_Protobuf_Any()}
    set {_options = newValue}
  }
  /// Returns true if `options` has been explicitly set.
  public var hasOptions: Bool {return self._options != nil}
  /// Clears the value of `options`. Subsequent reads from it will return its default value.
  public mutating func clearOptions() {self._options = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _options: SwiftProtobuf.Google_Protobuf_Any? = nil
}

public struct Containerd_Services_Introspection_V1_PluginInfoResponse: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var plugin: Containerd_Services_Introspection_V1_Plugin {
    get {return _plugin ?? Containerd_Services_Introspection_V1_Plugin()}
    set {_plugin = newValue}
  }
  /// Returns true if `plugin` has been explicitly set.
  public var hasPlugin: Bool {return self._plugin != nil}
  /// Clears the value of `plugin`. Subsequent reads from it will return its default value.
  public mutating func clearPlugin() {self._plugin = nil}

  public var extra: SwiftProtobuf.Google_Protobuf_Any {
    get {return _extra ?? SwiftProtobuf.Google_Protobuf_Any()}
    set {_extra = newValue}
  }
  /// Returns true if `extra` has been explicitly set.
  public var hasExtra: Bool {return self._extra != nil}
  /// Clears the value of `extra`. Subsequent reads from it will return its default value.
  public mutating func clearExtra() {self._extra = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _plugin: Containerd_Services_Introspection_V1_Plugin? = nil
  fileprivate var _extra: SwiftProtobuf.Google_Protobuf_Any? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "containerd.services.introspection.v1"

extension Containerd_Services_Introspection_V1_Plugin: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Plugin"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .same(proto: "id"),
    3: .same(proto: "requires"),
    4: .same(proto: "platforms"),
    5: .same(proto: "exports"),
    6: .same(proto: "capabilities"),
    7: .standard(proto: "init_err"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.type) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.id) }()
      case 3: try { try decoder.decodeRepeatedStringField(value: &self.requires) }()
      case 4: try { try decoder.decodeRepeatedMessageField(value: &self.platforms) }()
      case 5: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: &self.exports) }()
      case 6: try { try decoder.decodeRepeatedStringField(value: &self.capabilities) }()
      case 7: try { try decoder.decodeSingularMessageField(value: &self._initErr) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.type.isEmpty {
      try visitor.visitSingularStringField(value: self.type, fieldNumber: 1)
    }
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 2)
    }
    if !self.requires.isEmpty {
      try visitor.visitRepeatedStringField(value: self.requires, fieldNumber: 3)
    }
    if !self.platforms.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.platforms, fieldNumber: 4)
    }
    if !self.exports.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: self.exports, fieldNumber: 5)
    }
    if !self.capabilities.isEmpty {
      try visitor.visitRepeatedStringField(value: self.capabilities, fieldNumber: 6)
    }
    try { if let v = self._initErr {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Containerd_Services_Introspection_V1_Plugin, rhs: Containerd_Services_Introspection_V1_Plugin) -> Bool {
    if lhs.type != rhs.type {return false}
    if lhs.id != rhs.id {return false}
    if lhs.requires != rhs.requires {return false}
    if lhs.platforms != rhs.platforms {return false}
    if lhs.exports != rhs.exports {return false}
    if lhs.capabilities != rhs.capabilities {return false}
    if lhs._initErr != rhs._initErr {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Containerd_Services_Introspection_V1_PluginsRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PluginsRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "filters"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedStringField(value: &self.filters) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.filters.isEmpty {
      try visitor.visitRepeatedStringField(value: self.filters, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Containerd_Services_Introspection_V1_PluginsRequest, rhs: Containerd_Services_Introspection_V1_PluginsRequest) -> Bool {
    if lhs.filters != rhs.filters {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Containerd_Services_Introspection_V1_PluginsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PluginsResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "plugins"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.plugins) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.plugins.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.plugins, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Containerd_Services_Introspection_V1_PluginsResponse, rhs: Containerd_Services_Introspection_V1_PluginsResponse) -> Bool {
    if lhs.plugins != rhs.plugins {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Containerd_Services_Introspection_V1_ServerResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ServerResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "uuid"),
    2: .same(proto: "pid"),
    3: .same(proto: "pidns"),
    4: .same(proto: "deprecations"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.uuid) }()
      case 2: try { try decoder.decodeSingularUInt64Field(value: &self.pid) }()
      case 3: try { try decoder.decodeSingularUInt64Field(value: &self.pidns) }()
      case 4: try { try decoder.decodeRepeatedMessageField(value: &self.deprecations) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.uuid.isEmpty {
      try visitor.visitSingularStringField(value: self.uuid, fieldNumber: 1)
    }
    if self.pid != 0 {
      try visitor.visitSingularUInt64Field(value: self.pid, fieldNumber: 2)
    }
    if self.pidns != 0 {
      try visitor.visitSingularUInt64Field(value: self.pidns, fieldNumber: 3)
    }
    if !self.deprecations.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.deprecations, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Containerd_Services_Introspection_V1_ServerResponse, rhs: Containerd_Services_Introspection_V1_ServerResponse) -> Bool {
    if lhs.uuid != rhs.uuid {return false}
    if lhs.pid != rhs.pid {return false}
    if lhs.pidns != rhs.pidns {return false}
    if lhs.deprecations != rhs.deprecations {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Containerd_Services_Introspection_V1_DeprecationWarning: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DeprecationWarning"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "message"),
    3: .standard(proto: "last_occurrence"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.id) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.message) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._lastOccurrence) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    if !self.message.isEmpty {
      try visitor.visitSingularStringField(value: self.message, fieldNumber: 2)
    }
    try { if let v = self._lastOccurrence {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Containerd_Services_Introspection_V1_DeprecationWarning, rhs: Containerd_Services_Introspection_V1_DeprecationWarning) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.message != rhs.message {return false}
    if lhs._lastOccurrence != rhs._lastOccurrence {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Containerd_Services_Introspection_V1_PluginInfoRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PluginInfoRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .same(proto: "id"),
    3: .same(proto: "options"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.type) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.id) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._options) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.type.isEmpty {
      try visitor.visitSingularStringField(value: self.type, fieldNumber: 1)
    }
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 2)
    }
    try { if let v = self._options {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Containerd_Services_Introspection_V1_PluginInfoRequest, rhs: Containerd_Services_Introspection_V1_PluginInfoRequest) -> Bool {
    if lhs.type != rhs.type {return false}
    if lhs.id != rhs.id {return false}
    if lhs._options != rhs._options {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Containerd_Services_Introspection_V1_PluginInfoResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PluginInfoResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "plugin"),
    2: .same(proto: "extra"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._plugin) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._extra) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._plugin {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._extra {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Containerd_Services_Introspection_V1_PluginInfoResponse, rhs: Containerd_Services_Introspection_V1_PluginInfoResponse) -> Bool {
    if lhs._plugin != rhs._plugin {return false}
    if lhs._extra != rhs._extra {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
