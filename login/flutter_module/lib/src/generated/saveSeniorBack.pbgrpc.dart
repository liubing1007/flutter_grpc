///
//  Generated code. Do not modify.
//  source: saveSeniorBack.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;

import 'package:grpc/grpc.dart' as $grpc;
import 'saveSeniorBack.pb.dart';
export 'saveSeniorBack.pb.dart';

class SaveSeniorBackServerClient extends $grpc.Client {
  static final _$saveSeniorBack =
      new $grpc.ClientMethod<SaveSeniorBackRequest, SaveSeniorBackReply>(
          '/auth.SaveSeniorBackServer/saveSeniorBack',
          (SaveSeniorBackRequest value) => value.writeToBuffer(),
          (List<int> value) => new SaveSeniorBackReply.fromBuffer(value));

  SaveSeniorBackServerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<SaveSeniorBackReply> saveSeniorBack(
      SaveSeniorBackRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$saveSeniorBack, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }
}

abstract class SaveSeniorBackServerServiceBase extends $grpc.Service {
  String get $name => 'auth.SaveSeniorBackServer';

  SaveSeniorBackServerServiceBase() {
    $addMethod(
        new $grpc.ServiceMethod<SaveSeniorBackRequest, SaveSeniorBackReply>(
            'saveSeniorBack',
            saveSeniorBack_Pre,
            false,
            false,
            (List<int> value) => new SaveSeniorBackRequest.fromBuffer(value),
            (SaveSeniorBackReply value) => value.writeToBuffer()));
  }

  $async.Future<SaveSeniorBackReply> saveSeniorBack_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return saveSeniorBack(call, await request);
  }

  $async.Future<SaveSeniorBackReply> saveSeniorBack(
      $grpc.ServiceCall call, SaveSeniorBackRequest request);
}
