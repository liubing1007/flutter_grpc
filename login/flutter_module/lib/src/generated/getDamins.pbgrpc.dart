///
//  Generated code. Do not modify.
//  source: getDamins.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;

import 'package:grpc/grpc.dart' as $grpc;
import 'getDamins.pb.dart';
export 'getDamins.pb.dart';

class DaminsServerClient extends $grpc.Client {
  static final _$getDamins = new $grpc.ClientMethod<DaminRequest, DaminReply>(
      '/auth.DaminsServer/getDamins',
      (DaminRequest value) => value.writeToBuffer(),
      (List<int> value) => new DaminReply.fromBuffer(value));

  DaminsServerClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<DaminReply> getDamins(DaminRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getDamins, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }
}

abstract class DaminsServerServiceBase extends $grpc.Service {
  String get $name => 'auth.DaminsServer';

  DaminsServerServiceBase() {
    $addMethod(new $grpc.ServiceMethod<DaminRequest, DaminReply>(
        'getDamins',
        getDamins_Pre,
        false,
        false,
        (List<int> value) => new DaminRequest.fromBuffer(value),
        (DaminReply value) => value.writeToBuffer()));
  }

  $async.Future<DaminReply> getDamins_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return getDamins(call, await request);
  }

  $async.Future<DaminReply> getDamins(
      $grpc.ServiceCall call, DaminRequest request);
}
