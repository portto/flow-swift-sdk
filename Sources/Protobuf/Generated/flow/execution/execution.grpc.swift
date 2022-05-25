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
import SwiftProtobuf


/// ExecutionAPI is the API provided by the execution nodes.
///
/// Usage: instantiate `Flow_Execution_ExecutionAPIClient`, then call methods of this protocol to make API calls.
public protocol Flow_Execution_ExecutionAPIClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Flow_Execution_ExecutionAPIClientInterceptorFactoryProtocol? { get }

  func ping(
    _ request: Flow_Execution_PingRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Flow_Execution_PingRequest, Flow_Execution_PingResponse>

  func getAccountAtBlockID(
    _ request: Flow_Execution_GetAccountAtBlockIDRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Flow_Execution_GetAccountAtBlockIDRequest, Flow_Execution_GetAccountAtBlockIDResponse>

  func executeScriptAtBlockID(
    _ request: Flow_Execution_ExecuteScriptAtBlockIDRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Flow_Execution_ExecuteScriptAtBlockIDRequest, Flow_Execution_ExecuteScriptAtBlockIDResponse>

  func getEventsForBlockIDs(
    _ request: Flow_Execution_GetEventsForBlockIDsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Flow_Execution_GetEventsForBlockIDsRequest, Flow_Execution_GetEventsForBlockIDsResponse>

  func getTransactionResult(
    _ request: Flow_Execution_GetTransactionResultRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Flow_Execution_GetTransactionResultRequest, Flow_Execution_GetTransactionResultResponse>

  func getTransactionResultByIndex(
    _ request: Flow_Execution_GetTransactionByIndexRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Flow_Execution_GetTransactionByIndexRequest, Flow_Execution_GetTransactionResultResponse>

  func getTransactionResultsByBlockID(
    _ request: Flow_Execution_GetTransactionsByBlockIDRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Flow_Execution_GetTransactionsByBlockIDRequest, Flow_Execution_GetTransactionResultsResponse>

  func getRegisterAtBlockID(
    _ request: Flow_Execution_GetRegisterAtBlockIDRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Flow_Execution_GetRegisterAtBlockIDRequest, Flow_Execution_GetRegisterAtBlockIDResponse>

  func getLatestBlockHeader(
    _ request: Flow_Execution_GetLatestBlockHeaderRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Flow_Execution_GetLatestBlockHeaderRequest, Flow_Execution_BlockHeaderResponse>

  func getBlockHeaderByID(
    _ request: Flow_Execution_GetBlockHeaderByIDRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Flow_Execution_GetBlockHeaderByIDRequest, Flow_Execution_BlockHeaderResponse>
}

extension Flow_Execution_ExecutionAPIClientProtocol {
  public var serviceName: String {
    return "flow.execution.ExecutionAPI"
  }

  /// Ping is used to check if the access node is alive and healthy.
  ///
  /// - Parameters:
  ///   - request: Request to send to Ping.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func ping(
    _ request: Flow_Execution_PingRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Flow_Execution_PingRequest, Flow_Execution_PingResponse> {
    return self.makeUnaryCall(
      path: "/flow.execution.ExecutionAPI/Ping",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makePingInterceptors() ?? []
    )
  }

  /// GetAccountAtBlockID gets an account by address at the given block ID
  ///
  /// - Parameters:
  ///   - request: Request to send to GetAccountAtBlockID.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getAccountAtBlockID(
    _ request: Flow_Execution_GetAccountAtBlockIDRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Flow_Execution_GetAccountAtBlockIDRequest, Flow_Execution_GetAccountAtBlockIDResponse> {
    return self.makeUnaryCall(
      path: "/flow.execution.ExecutionAPI/GetAccountAtBlockID",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetAccountAtBlockIDInterceptors() ?? []
    )
  }

  /// ExecuteScriptAtBlockID executes a ready-only Cadence script against the
  /// execution state at the block with the given ID.
  ///
  /// - Parameters:
  ///   - request: Request to send to ExecuteScriptAtBlockID.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func executeScriptAtBlockID(
    _ request: Flow_Execution_ExecuteScriptAtBlockIDRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Flow_Execution_ExecuteScriptAtBlockIDRequest, Flow_Execution_ExecuteScriptAtBlockIDResponse> {
    return self.makeUnaryCall(
      path: "/flow.execution.ExecutionAPI/ExecuteScriptAtBlockID",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeExecuteScriptAtBlockIDInterceptors() ?? []
    )
  }

  /// GetEventsForBlockIDs retrieves events for all the specified block IDs that
  /// have the given type
  ///
  /// - Parameters:
  ///   - request: Request to send to GetEventsForBlockIDs.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getEventsForBlockIDs(
    _ request: Flow_Execution_GetEventsForBlockIDsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Flow_Execution_GetEventsForBlockIDsRequest, Flow_Execution_GetEventsForBlockIDsResponse> {
    return self.makeUnaryCall(
      path: "/flow.execution.ExecutionAPI/GetEventsForBlockIDs",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetEventsForBlockIDsInterceptors() ?? []
    )
  }

  /// GetTransactionResult gets the result of a transaction.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetTransactionResult.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getTransactionResult(
    _ request: Flow_Execution_GetTransactionResultRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Flow_Execution_GetTransactionResultRequest, Flow_Execution_GetTransactionResultResponse> {
    return self.makeUnaryCall(
      path: "/flow.execution.ExecutionAPI/GetTransactionResult",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetTransactionResultInterceptors() ?? []
    )
  }

  /// GetTransactionResultByIndex gets the result of a transaction at the index .
  ///
  /// - Parameters:
  ///   - request: Request to send to GetTransactionResultByIndex.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getTransactionResultByIndex(
    _ request: Flow_Execution_GetTransactionByIndexRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Flow_Execution_GetTransactionByIndexRequest, Flow_Execution_GetTransactionResultResponse> {
    return self.makeUnaryCall(
      path: "/flow.execution.ExecutionAPI/GetTransactionResultByIndex",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetTransactionResultByIndexInterceptors() ?? []
    )
  }

  /// GetTransactionResultByIndex gets the results of all transactions in the
  /// block ordered by transaction index
  ///
  /// - Parameters:
  ///   - request: Request to send to GetTransactionResultsByBlockID.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getTransactionResultsByBlockID(
    _ request: Flow_Execution_GetTransactionsByBlockIDRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Flow_Execution_GetTransactionsByBlockIDRequest, Flow_Execution_GetTransactionResultsResponse> {
    return self.makeUnaryCall(
      path: "/flow.execution.ExecutionAPI/GetTransactionResultsByBlockID",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetTransactionResultsByBlockIDInterceptors() ?? []
    )
  }

  /// GetRegisterAtBlockID collects a register at the block with the given ID (if
  /// available).
  ///
  /// - Parameters:
  ///   - request: Request to send to GetRegisterAtBlockID.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getRegisterAtBlockID(
    _ request: Flow_Execution_GetRegisterAtBlockIDRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Flow_Execution_GetRegisterAtBlockIDRequest, Flow_Execution_GetRegisterAtBlockIDResponse> {
    return self.makeUnaryCall(
      path: "/flow.execution.ExecutionAPI/GetRegisterAtBlockID",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetRegisterAtBlockIDInterceptors() ?? []
    )
  }

  /// GetLatestBlockHeader gets the latest sealed or unsealed block header.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetLatestBlockHeader.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getLatestBlockHeader(
    _ request: Flow_Execution_GetLatestBlockHeaderRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Flow_Execution_GetLatestBlockHeaderRequest, Flow_Execution_BlockHeaderResponse> {
    return self.makeUnaryCall(
      path: "/flow.execution.ExecutionAPI/GetLatestBlockHeader",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetLatestBlockHeaderInterceptors() ?? []
    )
  }

  /// GetBlockHeaderByID gets a block header by ID.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetBlockHeaderByID.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getBlockHeaderByID(
    _ request: Flow_Execution_GetBlockHeaderByIDRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Flow_Execution_GetBlockHeaderByIDRequest, Flow_Execution_BlockHeaderResponse> {
    return self.makeUnaryCall(
      path: "/flow.execution.ExecutionAPI/GetBlockHeaderByID",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetBlockHeaderByIDInterceptors() ?? []
    )
  }
}

public protocol Flow_Execution_ExecutionAPIClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'ping'.
  func makePingInterceptors() -> [ClientInterceptor<Flow_Execution_PingRequest, Flow_Execution_PingResponse>]

  /// - Returns: Interceptors to use when invoking 'getAccountAtBlockID'.
  func makeGetAccountAtBlockIDInterceptors() -> [ClientInterceptor<Flow_Execution_GetAccountAtBlockIDRequest, Flow_Execution_GetAccountAtBlockIDResponse>]

  /// - Returns: Interceptors to use when invoking 'executeScriptAtBlockID'.
  func makeExecuteScriptAtBlockIDInterceptors() -> [ClientInterceptor<Flow_Execution_ExecuteScriptAtBlockIDRequest, Flow_Execution_ExecuteScriptAtBlockIDResponse>]

  /// - Returns: Interceptors to use when invoking 'getEventsForBlockIDs'.
  func makeGetEventsForBlockIDsInterceptors() -> [ClientInterceptor<Flow_Execution_GetEventsForBlockIDsRequest, Flow_Execution_GetEventsForBlockIDsResponse>]

  /// - Returns: Interceptors to use when invoking 'getTransactionResult'.
  func makeGetTransactionResultInterceptors() -> [ClientInterceptor<Flow_Execution_GetTransactionResultRequest, Flow_Execution_GetTransactionResultResponse>]

  /// - Returns: Interceptors to use when invoking 'getTransactionResultByIndex'.
  func makeGetTransactionResultByIndexInterceptors() -> [ClientInterceptor<Flow_Execution_GetTransactionByIndexRequest, Flow_Execution_GetTransactionResultResponse>]

  /// - Returns: Interceptors to use when invoking 'getTransactionResultsByBlockID'.
  func makeGetTransactionResultsByBlockIDInterceptors() -> [ClientInterceptor<Flow_Execution_GetTransactionsByBlockIDRequest, Flow_Execution_GetTransactionResultsResponse>]

  /// - Returns: Interceptors to use when invoking 'getRegisterAtBlockID'.
  func makeGetRegisterAtBlockIDInterceptors() -> [ClientInterceptor<Flow_Execution_GetRegisterAtBlockIDRequest, Flow_Execution_GetRegisterAtBlockIDResponse>]

  /// - Returns: Interceptors to use when invoking 'getLatestBlockHeader'.
  func makeGetLatestBlockHeaderInterceptors() -> [ClientInterceptor<Flow_Execution_GetLatestBlockHeaderRequest, Flow_Execution_BlockHeaderResponse>]

  /// - Returns: Interceptors to use when invoking 'getBlockHeaderByID'.
  func makeGetBlockHeaderByIDInterceptors() -> [ClientInterceptor<Flow_Execution_GetBlockHeaderByIDRequest, Flow_Execution_BlockHeaderResponse>]
}

public final class Flow_Execution_ExecutionAPIClient: Flow_Execution_ExecutionAPIClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Flow_Execution_ExecutionAPIClientInterceptorFactoryProtocol?

  /// Creates a client for the flow.execution.ExecutionAPI service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Flow_Execution_ExecutionAPIClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

