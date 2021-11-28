///
//  Generated code. Do not modify.
//  source: protos/me/slack/slackbase.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'slackbase.pb.dart' as $0;
export 'slackbase.pb.dart';

class SlackServiceClient extends $grpc.Client {
  static final _$getWorkspaces =
      $grpc.ClientMethod<$0.Empty, $0.SKUserWorkspaces>(
          '/SlackService/getWorkspaces',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SKUserWorkspaces.fromBuffer(value));
  static final _$getUsers = $grpc.ClientMethod<$0.Empty, $0.SKChannelUsers>(
      '/SlackService/getUsers',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SKChannelUsers.fromBuffer(value));
  static final _$getUserChannels =
      $grpc.ClientMethod<$0.Empty, $0.SKUserChannels>(
          '/SlackService/getUserChannels',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.SKUserChannels.fromBuffer(value));

  SlackServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.SKUserWorkspaces> getWorkspaces($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getWorkspaces, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.SKChannelUsers> getUsers($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getUsers, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.SKUserChannels> getUserChannels($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getUserChannels, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class SlackServiceBase extends $grpc.Service {
  $core.String get $name => 'SlackService';

  SlackServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.SKUserWorkspaces>(
        'getWorkspaces',
        getWorkspaces_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.SKUserWorkspaces value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.SKChannelUsers>(
        'getUsers',
        getUsers_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.SKChannelUsers value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.SKUserChannels>(
        'getUserChannels',
        getUserChannels_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.SKUserChannels value) => value.writeToBuffer()));
  }

  $async.Stream<$0.SKUserWorkspaces> getWorkspaces_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async* {
    yield* getWorkspaces(call, await request);
  }

  $async.Stream<$0.SKChannelUsers> getUsers_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async* {
    yield* getUsers(call, await request);
  }

  $async.Stream<$0.SKUserChannels> getUserChannels_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async* {
    yield* getUserChannels(call, await request);
  }

  $async.Stream<$0.SKUserWorkspaces> getWorkspaces(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Stream<$0.SKChannelUsers> getUsers(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Stream<$0.SKUserChannels> getUserChannels(
      $grpc.ServiceCall call, $0.Empty request);
}
