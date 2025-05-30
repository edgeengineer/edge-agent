// DO NOT EDIT.
// swift-format-ignore-file
// swiftlint:disable all
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: github.com/containerd/containerd/api/services/images/v1/images.proto
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

public struct Containerd_Services_Images_V1_Image: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Name provides a unique name for the image.
  ///
  /// Containerd treats this as the primary identifier.
  public var name: String = String()

  /// Labels provides free form labels for the image. These are runtime only
  /// and do not get inherited into the package image in any way.
  ///
  /// Labels may be updated using the field mask.
  /// The combined size of a key/value pair cannot exceed 4096 bytes.
  public var labels: Dictionary<String,String> = [:]

  /// Target describes the content entry point of the image.
  public var target: Containerd_Types_Descriptor {
    get {return _target ?? Containerd_Types_Descriptor()}
    set {_target = newValue}
  }
  /// Returns true if `target` has been explicitly set.
  public var hasTarget: Bool {return self._target != nil}
  /// Clears the value of `target`. Subsequent reads from it will return its default value.
  public mutating func clearTarget() {self._target = nil}

  /// CreatedAt is the time the image was first created.
  public var createdAt: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _createdAt ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_createdAt = newValue}
  }
  /// Returns true if `createdAt` has been explicitly set.
  public var hasCreatedAt: Bool {return self._createdAt != nil}
  /// Clears the value of `createdAt`. Subsequent reads from it will return its default value.
  public mutating func clearCreatedAt() {self._createdAt = nil}

  /// UpdatedAt is the last time the image was mutated.
  public var updatedAt: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _updatedAt ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_updatedAt = newValue}
  }
  /// Returns true if `updatedAt` has been explicitly set.
  public var hasUpdatedAt: Bool {return self._updatedAt != nil}
  /// Clears the value of `updatedAt`. Subsequent reads from it will return its default value.
  public mutating func clearUpdatedAt() {self._updatedAt = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _target: Containerd_Types_Descriptor? = nil
  fileprivate var _createdAt: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _updatedAt: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

public struct Containerd_Services_Images_V1_GetImageRequest: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var name: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Containerd_Services_Images_V1_GetImageResponse: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var image: Containerd_Services_Images_V1_Image {
    get {return _image ?? Containerd_Services_Images_V1_Image()}
    set {_image = newValue}
  }
  /// Returns true if `image` has been explicitly set.
  public var hasImage: Bool {return self._image != nil}
  /// Clears the value of `image`. Subsequent reads from it will return its default value.
  public mutating func clearImage() {self._image = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _image: Containerd_Services_Images_V1_Image? = nil
}

public struct Containerd_Services_Images_V1_CreateImageRequest: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var image: Containerd_Services_Images_V1_Image {
    get {return _image ?? Containerd_Services_Images_V1_Image()}
    set {_image = newValue}
  }
  /// Returns true if `image` has been explicitly set.
  public var hasImage: Bool {return self._image != nil}
  /// Clears the value of `image`. Subsequent reads from it will return its default value.
  public mutating func clearImage() {self._image = nil}

  public var sourceDateEpoch: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _sourceDateEpoch ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_sourceDateEpoch = newValue}
  }
  /// Returns true if `sourceDateEpoch` has been explicitly set.
  public var hasSourceDateEpoch: Bool {return self._sourceDateEpoch != nil}
  /// Clears the value of `sourceDateEpoch`. Subsequent reads from it will return its default value.
  public mutating func clearSourceDateEpoch() {self._sourceDateEpoch = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _image: Containerd_Services_Images_V1_Image? = nil
  fileprivate var _sourceDateEpoch: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

public struct Containerd_Services_Images_V1_CreateImageResponse: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var image: Containerd_Services_Images_V1_Image {
    get {return _image ?? Containerd_Services_Images_V1_Image()}
    set {_image = newValue}
  }
  /// Returns true if `image` has been explicitly set.
  public var hasImage: Bool {return self._image != nil}
  /// Clears the value of `image`. Subsequent reads from it will return its default value.
  public mutating func clearImage() {self._image = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _image: Containerd_Services_Images_V1_Image? = nil
}

public struct Containerd_Services_Images_V1_UpdateImageRequest: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Image provides a full or partial image for update.
  ///
  /// The name field must be set or an error will be returned.
  public var image: Containerd_Services_Images_V1_Image {
    get {return _image ?? Containerd_Services_Images_V1_Image()}
    set {_image = newValue}
  }
  /// Returns true if `image` has been explicitly set.
  public var hasImage: Bool {return self._image != nil}
  /// Clears the value of `image`. Subsequent reads from it will return its default value.
  public mutating func clearImage() {self._image = nil}

  /// UpdateMask specifies which fields to perform the update on. If empty,
  /// the operation applies to all fields.
  public var updateMask: SwiftProtobuf.Google_Protobuf_FieldMask {
    get {return _updateMask ?? SwiftProtobuf.Google_Protobuf_FieldMask()}
    set {_updateMask = newValue}
  }
  /// Returns true if `updateMask` has been explicitly set.
  public var hasUpdateMask: Bool {return self._updateMask != nil}
  /// Clears the value of `updateMask`. Subsequent reads from it will return its default value.
  public mutating func clearUpdateMask() {self._updateMask = nil}

  public var sourceDateEpoch: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _sourceDateEpoch ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_sourceDateEpoch = newValue}
  }
  /// Returns true if `sourceDateEpoch` has been explicitly set.
  public var hasSourceDateEpoch: Bool {return self._sourceDateEpoch != nil}
  /// Clears the value of `sourceDateEpoch`. Subsequent reads from it will return its default value.
  public mutating func clearSourceDateEpoch() {self._sourceDateEpoch = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _image: Containerd_Services_Images_V1_Image? = nil
  fileprivate var _updateMask: SwiftProtobuf.Google_Protobuf_FieldMask? = nil
  fileprivate var _sourceDateEpoch: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

public struct Containerd_Services_Images_V1_UpdateImageResponse: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var image: Containerd_Services_Images_V1_Image {
    get {return _image ?? Containerd_Services_Images_V1_Image()}
    set {_image = newValue}
  }
  /// Returns true if `image` has been explicitly set.
  public var hasImage: Bool {return self._image != nil}
  /// Clears the value of `image`. Subsequent reads from it will return its default value.
  public mutating func clearImage() {self._image = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _image: Containerd_Services_Images_V1_Image? = nil
}

public struct Containerd_Services_Images_V1_ListImagesRequest: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Filters contains one or more filters using the syntax defined in the
  /// containerd filter package.
  ///
  /// The returned result will be those that match any of the provided
  /// filters. Expanded, images that match the following will be
  /// returned:
  ///
  ///	filters[0] or filters[1] or ... or filters[n-1] or filters[n]
  ///
  /// If filters is zero-length or nil, all items will be returned.
  public var filters: [String] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Containerd_Services_Images_V1_ListImagesResponse: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var images: [Containerd_Services_Images_V1_Image] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Containerd_Services_Images_V1_DeleteImageRequest: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var name: String = String()

  /// Sync indicates that the delete and cleanup should be done
  /// synchronously before returning to the caller
  ///
  /// Default is false
  public var sync: Bool = false

  /// Target value for image to be deleted
  ///
  /// If image descriptor does not match the same digest,
  /// the delete operation will return "not found" error.
  public var target: Containerd_Types_Descriptor {
    get {return _target ?? Containerd_Types_Descriptor()}
    set {_target = newValue}
  }
  /// Returns true if `target` has been explicitly set.
  public var hasTarget: Bool {return self._target != nil}
  /// Clears the value of `target`. Subsequent reads from it will return its default value.
  public mutating func clearTarget() {self._target = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _target: Containerd_Types_Descriptor? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "containerd.services.images.v1"

extension Containerd_Services_Images_V1_Image: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Image"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "labels"),
    3: .same(proto: "target"),
    7: .standard(proto: "created_at"),
    8: .standard(proto: "updated_at"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: &self.labels) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._target) }()
      case 7: try { try decoder.decodeSingularMessageField(value: &self._createdAt) }()
      case 8: try { try decoder.decodeSingularMessageField(value: &self._updatedAt) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.labels.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: self.labels, fieldNumber: 2)
    }
    try { if let v = self._target {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    try { if let v = self._createdAt {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
    } }()
    try { if let v = self._updatedAt {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Containerd_Services_Images_V1_Image, rhs: Containerd_Services_Images_V1_Image) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.labels != rhs.labels {return false}
    if lhs._target != rhs._target {return false}
    if lhs._createdAt != rhs._createdAt {return false}
    if lhs._updatedAt != rhs._updatedAt {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Containerd_Services_Images_V1_GetImageRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetImageRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Containerd_Services_Images_V1_GetImageRequest, rhs: Containerd_Services_Images_V1_GetImageRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Containerd_Services_Images_V1_GetImageResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetImageResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "image"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._image) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._image {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Containerd_Services_Images_V1_GetImageResponse, rhs: Containerd_Services_Images_V1_GetImageResponse) -> Bool {
    if lhs._image != rhs._image {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Containerd_Services_Images_V1_CreateImageRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CreateImageRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "image"),
    2: .standard(proto: "source_date_epoch"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._image) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._sourceDateEpoch) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._image {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._sourceDateEpoch {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Containerd_Services_Images_V1_CreateImageRequest, rhs: Containerd_Services_Images_V1_CreateImageRequest) -> Bool {
    if lhs._image != rhs._image {return false}
    if lhs._sourceDateEpoch != rhs._sourceDateEpoch {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Containerd_Services_Images_V1_CreateImageResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CreateImageResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "image"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._image) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._image {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Containerd_Services_Images_V1_CreateImageResponse, rhs: Containerd_Services_Images_V1_CreateImageResponse) -> Bool {
    if lhs._image != rhs._image {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Containerd_Services_Images_V1_UpdateImageRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UpdateImageRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "image"),
    2: .standard(proto: "update_mask"),
    3: .standard(proto: "source_date_epoch"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._image) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._updateMask) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._sourceDateEpoch) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._image {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._updateMask {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try { if let v = self._sourceDateEpoch {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Containerd_Services_Images_V1_UpdateImageRequest, rhs: Containerd_Services_Images_V1_UpdateImageRequest) -> Bool {
    if lhs._image != rhs._image {return false}
    if lhs._updateMask != rhs._updateMask {return false}
    if lhs._sourceDateEpoch != rhs._sourceDateEpoch {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Containerd_Services_Images_V1_UpdateImageResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UpdateImageResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "image"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._image) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._image {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Containerd_Services_Images_V1_UpdateImageResponse, rhs: Containerd_Services_Images_V1_UpdateImageResponse) -> Bool {
    if lhs._image != rhs._image {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Containerd_Services_Images_V1_ListImagesRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListImagesRequest"
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

  public static func ==(lhs: Containerd_Services_Images_V1_ListImagesRequest, rhs: Containerd_Services_Images_V1_ListImagesRequest) -> Bool {
    if lhs.filters != rhs.filters {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Containerd_Services_Images_V1_ListImagesResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListImagesResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "images"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.images) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.images.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.images, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Containerd_Services_Images_V1_ListImagesResponse, rhs: Containerd_Services_Images_V1_ListImagesResponse) -> Bool {
    if lhs.images != rhs.images {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Containerd_Services_Images_V1_DeleteImageRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DeleteImageRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "sync"),
    3: .same(proto: "target"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularBoolField(value: &self.sync) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._target) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if self.sync != false {
      try visitor.visitSingularBoolField(value: self.sync, fieldNumber: 2)
    }
    try { if let v = self._target {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Containerd_Services_Images_V1_DeleteImageRequest, rhs: Containerd_Services_Images_V1_DeleteImageRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.sync != rhs.sync {return false}
    if lhs._target != rhs._target {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
