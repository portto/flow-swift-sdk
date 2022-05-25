//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: flow/execution/execution.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import GRPC
import NIO
import Protobuf
import SwiftProtobuf


internal final class Flow_Execution_ExecutionAPITestClient: Flow_Execution_ExecutionAPIClientProtocol {
  private let fakeChannel: FakeChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: Flow_Execution_ExecutionAPIClientInterceptorFactoryProtocol?

  internal var channel: GRPCChannel {
    return self.fakeChannel
  }

  internal init(
    fakeChannel: FakeChannel = FakeChannel(),
    defaultCallOptions callOptions: CallOptions = CallOptions(),
    interceptors: Flow_Execution_ExecutionAPIClientInterceptorFactoryProtocol? = nil
  ) {
    self.fakeChannel = fakeChannel
    self.defaultCallOptions = callOptions
    self.interceptors = interceptors
  }

  /// Make a unary response for the Ping RPC. This must be called
  /// before calling 'ping'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  internal func makePingResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Flow_Execution_PingRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Flow_Execution_PingRequest, Flow_Execution_PingResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: "/flow.execution.ExecutionAPI/Ping", requestHandler: requestHandler)
  }

  internal func enqueuePingResponse(
    _ response: Flow_Execution_PingResponse,
    _ requestHandler: @escaping (FakeRequestPart<Flow_Execution_PingRequest>) -> () = { _ in }
  )  {
    let stream = self.makePingResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'Ping'
  internal var hasPingResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: "/flow.execution.ExecutionAPI/Ping")
  }

  /// Make a unary response for the GetAccountAtBlockID RPC. This must be called
  /// before calling 'getAccountAtBlockID'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  internal func makeGetAccountAtBlockIDResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Flow_Execution_GetAccountAtBlockIDRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Flow_Execution_GetAccountAtBlockIDRequest, Flow_Execution_GetAccountAtBlockIDResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: "/flow.execution.ExecutionAPI/GetAccountAtBlockID", requestHandler: requestHandler)
  }

  internal func enqueueGetAccountAtBlockIDResponse(
    _ response: Flow_Execution_GetAccountAtBlockIDResponse,
    _ requestHandler: @escaping (FakeRequestPart<Flow_Execution_GetAccountAtBlockIDRequest>) -> () = { _ in }
  )  {
    let stream = self.makeGetAccountAtBlockIDResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'GetAccountAtBlockID'
  internal var hasGetAccountAtBlockIDResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: "/flow.execution.ExecutionAPI/GetAccountAtBlockID")
  }

  /// Make a unary response for the ExecuteScriptAtBlockID RPC. This must be called
  /// before calling 'executeScriptAtBlockID'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  internal func makeExecuteScriptAtBlockIDResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Flow_Execution_ExecuteScriptAtBlockIDRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Flow_Execution_ExecuteScriptAtBlockIDRequest, Flow_Execution_ExecuteScriptAtBlockIDResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: "/flow.execution.ExecutionAPI/ExecuteScriptAtBlockID", requestHandler: requestHandler)
  }

  internal func enqueueExecuteScriptAtBlockIDResponse(
    _ response: Flow_Execution_ExecuteScriptAtBlockIDResponse,
    _ requestHandler: @escaping (FakeRequestPart<Flow_Execution_ExecuteScriptAtBlockIDRequest>) -> () = { _ in }
  )  {
    let stream = self.makeExecuteScriptAtBlockIDResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'ExecuteScriptAtBlockID'
  internal var hasExecuteScriptAtBlockIDResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: "/flow.execution.ExecutionAPI/ExecuteScriptAtBlockID")
  }

  /// Make a unary response for the GetEventsForBlockIDs RPC. This must be called
  /// before calling 'getEventsForBlockIDs'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  internal func makeGetEventsForBlockIDsResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Flow_Execution_GetEventsForBlockIDsRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Flow_Execution_GetEventsForBlockIDsRequest, Flow_Execution_GetEventsForBlockIDsResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: "/flow.execution.ExecutionAPI/GetEventsForBlockIDs", requestHandler: requestHandler)
  }

  internal func enqueueGetEventsForBlockIDsResponse(
    _ response: Flow_Execution_GetEventsForBlockIDsResponse,
    _ requestHandler: @escaping (FakeRequestPart<Flow_Execution_GetEventsForBlockIDsRequest>) -> () = { _ in }
  )  {
    let stream = self.makeGetEventsForBlockIDsResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'GetEventsForBlockIDs'
  internal var hasGetEventsForBlockIDsResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: "/flow.execution.ExecutionAPI/GetEventsForBlockIDs")
  }

  /// Make a unary response for the GetTransactionResult RPC. This must be called
  /// before calling 'getTransactionResult'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  internal func makeGetTransactionResultResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Flow_Execution_GetTransactionResultRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Flow_Execution_GetTransactionResultRequest, Flow_Execution_GetTransactionResultResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: "/flow.execution.ExecutionAPI/GetTransactionResult", requestHandler: requestHandler)
  }

  internal func enqueueGetTransactionResultResponse(
    _ response: Flow_Execution_GetTransactionResultResponse,
    _ requestHandler: @escaping (FakeRequestPart<Flow_Execution_GetTransactionResultRequest>) -> () = { _ in }
  )  {
    let stream = self.makeGetTransactionResultResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'GetTransactionResult'
  internal var hasGetTransactionResultResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: "/flow.execution.ExecutionAPI/GetTransactionResult")
  }

  /// Make a unary response for the GetTransactionResultByIndex RPC. This must be called
  /// before calling 'getTransactionResultByIndex'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  internal func makeGetTransactionResultByIndexResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Flow_Execution_GetTransactionByIndexRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Flow_Execution_GetTransactionByIndexRequest, Flow_Execution_GetTransactionResultResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: "/flow.execution.ExecutionAPI/GetTransactionResultByIndex", requestHandler: requestHandler)
  }

  internal func enqueueGetTransactionResultByIndexResponse(
    _ response: Flow_Execution_GetTransactionResultResponse,
    _ requestHandler: @escaping (FakeRequestPart<Flow_Execution_GetTransactionByIndexRequest>) -> () = { _ in }
  )  {
    let stream = self.makeGetTransactionResultByIndexResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'GetTransactionResultByIndex'
  internal var hasGetTransactionResultByIndexResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: "/flow.execution.ExecutionAPI/GetTransactionResultByIndex")
  }

  /// Make a unary response for the GetTransactionResultsByBlockID RPC. This must be called
  /// before calling 'getTransactionResultsByBlockID'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  internal func makeGetTransactionResultsByBlockIDResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Flow_Execution_GetTransactionsByBlockIDRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Flow_Execution_GetTransactionsByBlockIDRequest, Flow_Execution_GetTransactionResultsResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: "/flow.execution.ExecutionAPI/GetTransactionResultsByBlockID", requestHandler: requestHandler)
  }

  internal func enqueueGetTransactionResultsByBlockIDResponse(
    _ response: Flow_Execution_GetTransactionResultsResponse,
    _ requestHandler: @escaping (FakeRequestPart<Flow_Execution_GetTransactionsByBlockIDRequest>) -> () = { _ in }
  )  {
    let stream = self.makeGetTransactionResultsByBlockIDResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'GetTransactionResultsByBlockID'
  internal var hasGetTransactionResultsByBlockIDResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: "/flow.execution.ExecutionAPI/GetTransactionResultsByBlockID")
  }

  /// Make a unary response for the GetRegisterAtBlockID RPC. This must be called
  /// before calling 'getRegisterAtBlockID'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  internal func makeGetRegisterAtBlockIDResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Flow_Execution_GetRegisterAtBlockIDRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Flow_Execution_GetRegisterAtBlockIDRequest, Flow_Execution_GetRegisterAtBlockIDResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: "/flow.execution.ExecutionAPI/GetRegisterAtBlockID", requestHandler: requestHandler)
  }

  internal func enqueueGetRegisterAtBlockIDResponse(
    _ response: Flow_Execution_GetRegisterAtBlockIDResponse,
    _ requestHandler: @escaping (FakeRequestPart<Flow_Execution_GetRegisterAtBlockIDRequest>) -> () = { _ in }
  )  {
    let stream = self.makeGetRegisterAtBlockIDResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'GetRegisterAtBlockID'
  internal var hasGetRegisterAtBlockIDResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: "/flow.execution.ExecutionAPI/GetRegisterAtBlockID")
  }

  /// Make a unary response for the GetLatestBlockHeader RPC. This must be called
  /// before calling 'getLatestBlockHeader'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  internal func makeGetLatestBlockHeaderResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Flow_Execution_GetLatestBlockHeaderRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Flow_Execution_GetLatestBlockHeaderRequest, Flow_Execution_BlockHeaderResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: "/flow.execution.ExecutionAPI/GetLatestBlockHeader", requestHandler: requestHandler)
  }

  internal func enqueueGetLatestBlockHeaderResponse(
    _ response: Flow_Execution_BlockHeaderResponse,
    _ requestHandler: @escaping (FakeRequestPart<Flow_Execution_GetLatestBlockHeaderRequest>) -> () = { _ in }
  )  {
    let stream = self.makeGetLatestBlockHeaderResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'GetLatestBlockHeader'
  internal var hasGetLatestBlockHeaderResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: "/flow.execution.ExecutionAPI/GetLatestBlockHeader")
  }

  /// Make a unary response for the GetBlockHeaderByID RPC. This must be called
  /// before calling 'getBlockHeaderByID'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  internal func makeGetBlockHeaderByIDResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Flow_Execution_GetBlockHeaderByIDRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Flow_Execution_GetBlockHeaderByIDRequest, Flow_Execution_BlockHeaderResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: "/flow.execution.ExecutionAPI/GetBlockHeaderByID", requestHandler: requestHandler)
  }

  internal func enqueueGetBlockHeaderByIDResponse(
    _ response: Flow_Execution_BlockHeaderResponse,
    _ requestHandler: @escaping (FakeRequestPart<Flow_Execution_GetBlockHeaderByIDRequest>) -> () = { _ in }
  )  {
    let stream = self.makeGetBlockHeaderByIDResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'GetBlockHeaderByID'
  internal var hasGetBlockHeaderByIDResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: "/flow.execution.ExecutionAPI/GetBlockHeaderByID")
  }
}

