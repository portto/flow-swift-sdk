// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: flow/entities/execution_result.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

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

public struct Flow_Entities_ExecutionResult {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var previousResultID: Data = Data()

  public var blockID: Data = Data()

  public var chunks: [Flow_Entities_Chunk] = []

  public var serviceEvents: [Flow_Entities_ServiceEvent] = []

  public var executionDataID: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Flow_Entities_Chunk {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var collectionIndex: UInt32 = 0

  /// state when starting executing this chunk
  public var startState: Data = Data()

  /// Events generated by executing results
  public var eventCollection: Data = Data()

  /// Block id of the execution result this chunk belongs to
  public var blockID: Data = Data()

  /// total amount of computation used by running all txs in this chunk
  public var totalComputationUsed: UInt64 = 0

  /// number of transactions inside the collection
  public var numberOfTransactions: UInt32 = 0

  /// chunk index inside the ER (starts from zero)
  public var index: UInt64 = 0

  /// EndState inferred from next chunk or from the ER
  public var endState: Data = Data()

  public var executionDataID: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Flow_Entities_ServiceEvent {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var type: String = String()

  public var payload: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Flow_Entities_ExecutionReceiptMeta {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var executorID: Data = Data()

  public var resultID: Data = Data()

  public var spocks: [Data] = []

  public var executorSignature: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Flow_Entities_ExecutionResult: @unchecked Sendable {}
extension Flow_Entities_Chunk: @unchecked Sendable {}
extension Flow_Entities_ServiceEvent: @unchecked Sendable {}
extension Flow_Entities_ExecutionReceiptMeta: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "flow.entities"

extension Flow_Entities_ExecutionResult: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ExecutionResult"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "previous_result_id"),
    2: .standard(proto: "block_id"),
    3: .same(proto: "chunks"),
    4: .standard(proto: "service_events"),
    5: .standard(proto: "execution_data_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.previousResultID) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.blockID) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.chunks) }()
      case 4: try { try decoder.decodeRepeatedMessageField(value: &self.serviceEvents) }()
      case 5: try { try decoder.decodeSingularBytesField(value: &self.executionDataID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.previousResultID.isEmpty {
      try visitor.visitSingularBytesField(value: self.previousResultID, fieldNumber: 1)
    }
    if !self.blockID.isEmpty {
      try visitor.visitSingularBytesField(value: self.blockID, fieldNumber: 2)
    }
    if !self.chunks.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.chunks, fieldNumber: 3)
    }
    if !self.serviceEvents.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.serviceEvents, fieldNumber: 4)
    }
    if !self.executionDataID.isEmpty {
      try visitor.visitSingularBytesField(value: self.executionDataID, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Flow_Entities_ExecutionResult, rhs: Flow_Entities_ExecutionResult) -> Bool {
    if lhs.previousResultID != rhs.previousResultID {return false}
    if lhs.blockID != rhs.blockID {return false}
    if lhs.chunks != rhs.chunks {return false}
    if lhs.serviceEvents != rhs.serviceEvents {return false}
    if lhs.executionDataID != rhs.executionDataID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Flow_Entities_Chunk: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Chunk"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "CollectionIndex"),
    2: .standard(proto: "start_state"),
    3: .standard(proto: "event_collection"),
    4: .standard(proto: "block_id"),
    5: .standard(proto: "total_computation_used"),
    6: .standard(proto: "number_of_transactions"),
    7: .same(proto: "index"),
    8: .standard(proto: "end_state"),
    9: .standard(proto: "execution_data_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt32Field(value: &self.collectionIndex) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.startState) }()
      case 3: try { try decoder.decodeSingularBytesField(value: &self.eventCollection) }()
      case 4: try { try decoder.decodeSingularBytesField(value: &self.blockID) }()
      case 5: try { try decoder.decodeSingularUInt64Field(value: &self.totalComputationUsed) }()
      case 6: try { try decoder.decodeSingularUInt32Field(value: &self.numberOfTransactions) }()
      case 7: try { try decoder.decodeSingularUInt64Field(value: &self.index) }()
      case 8: try { try decoder.decodeSingularBytesField(value: &self.endState) }()
      case 9: try { try decoder.decodeSingularBytesField(value: &self.executionDataID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.collectionIndex != 0 {
      try visitor.visitSingularUInt32Field(value: self.collectionIndex, fieldNumber: 1)
    }
    if !self.startState.isEmpty {
      try visitor.visitSingularBytesField(value: self.startState, fieldNumber: 2)
    }
    if !self.eventCollection.isEmpty {
      try visitor.visitSingularBytesField(value: self.eventCollection, fieldNumber: 3)
    }
    if !self.blockID.isEmpty {
      try visitor.visitSingularBytesField(value: self.blockID, fieldNumber: 4)
    }
    if self.totalComputationUsed != 0 {
      try visitor.visitSingularUInt64Field(value: self.totalComputationUsed, fieldNumber: 5)
    }
    if self.numberOfTransactions != 0 {
      try visitor.visitSingularUInt32Field(value: self.numberOfTransactions, fieldNumber: 6)
    }
    if self.index != 0 {
      try visitor.visitSingularUInt64Field(value: self.index, fieldNumber: 7)
    }
    if !self.endState.isEmpty {
      try visitor.visitSingularBytesField(value: self.endState, fieldNumber: 8)
    }
    if !self.executionDataID.isEmpty {
      try visitor.visitSingularBytesField(value: self.executionDataID, fieldNumber: 9)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Flow_Entities_Chunk, rhs: Flow_Entities_Chunk) -> Bool {
    if lhs.collectionIndex != rhs.collectionIndex {return false}
    if lhs.startState != rhs.startState {return false}
    if lhs.eventCollection != rhs.eventCollection {return false}
    if lhs.blockID != rhs.blockID {return false}
    if lhs.totalComputationUsed != rhs.totalComputationUsed {return false}
    if lhs.numberOfTransactions != rhs.numberOfTransactions {return false}
    if lhs.index != rhs.index {return false}
    if lhs.endState != rhs.endState {return false}
    if lhs.executionDataID != rhs.executionDataID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Flow_Entities_ServiceEvent: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ServiceEvent"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .same(proto: "payload"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.type) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.payload) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.type.isEmpty {
      try visitor.visitSingularStringField(value: self.type, fieldNumber: 1)
    }
    if !self.payload.isEmpty {
      try visitor.visitSingularBytesField(value: self.payload, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Flow_Entities_ServiceEvent, rhs: Flow_Entities_ServiceEvent) -> Bool {
    if lhs.type != rhs.type {return false}
    if lhs.payload != rhs.payload {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Flow_Entities_ExecutionReceiptMeta: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ExecutionReceiptMeta"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "executor_id"),
    2: .standard(proto: "result_id"),
    3: .same(proto: "spocks"),
    4: .standard(proto: "executor_signature"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.executorID) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.resultID) }()
      case 3: try { try decoder.decodeRepeatedBytesField(value: &self.spocks) }()
      case 4: try { try decoder.decodeSingularBytesField(value: &self.executorSignature) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.executorID.isEmpty {
      try visitor.visitSingularBytesField(value: self.executorID, fieldNumber: 1)
    }
    if !self.resultID.isEmpty {
      try visitor.visitSingularBytesField(value: self.resultID, fieldNumber: 2)
    }
    if !self.spocks.isEmpty {
      try visitor.visitRepeatedBytesField(value: self.spocks, fieldNumber: 3)
    }
    if !self.executorSignature.isEmpty {
      try visitor.visitSingularBytesField(value: self.executorSignature, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Flow_Entities_ExecutionReceiptMeta, rhs: Flow_Entities_ExecutionReceiptMeta) -> Bool {
    if lhs.executorID != rhs.executorID {return false}
    if lhs.resultID != rhs.resultID {return false}
    if lhs.spocks != rhs.spocks {return false}
    if lhs.executorSignature != rhs.executorSignature {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}