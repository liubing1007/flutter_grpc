///
//  Generated code. Do not modify.
//  source: auth.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;

import 'package:grpc/grpc.dart' as $grpc;
import 'auth.pb.dart';
export 'auth.pb.dart';

class AuthServerClient extends $grpc.Client {
  static final _$auth = new $grpc.ClientMethod<AuthRequest, AuthReply>(
      '/auth.AuthServer/auth',
      (AuthRequest value) => value.writeToBuffer(),
      (List<int> value) => new AuthReply.fromBuffer(value));

  AuthServerClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<AuthReply> auth(AuthRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$auth, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }
}

abstract class AuthServerServiceBase extends $grpc.Service {
  String get $name => 'auth.AuthServer';

  AuthServerServiceBase() {
    $addMethod(new $grpc.ServiceMethod<AuthRequest, AuthReply>(
        'auth',
        auth_Pre,
        false,
        false,
        (List<int> value) => new AuthRequest.fromBuffer(value),
        (AuthReply value) => value.writeToBuffer()));
  }

  $async.Future<AuthReply> auth_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return auth(call, await request);
  }

  $async.Future<AuthReply> auth($grpc.ServiceCall call, AuthRequest request);
}
