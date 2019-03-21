///
//  Generated code. Do not modify.
//  source: auth.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:protobuf/protobuf.dart' as $pb;

class AuthRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('AuthRequest', package: const $pb.PackageName('auth'))
    ..aOS(1, 'pwd')
    ..aOS(2, 'userName')
    ..aOS(3, 'udid')
    ..aOS(4, 'manufacturer')
    ..aOS(5, 'model')
    ..aOS(6, 'osVersion')
    ..aOS(7, 'appVersion')
    ..aOS(8, 'token')
    ..aOS(9, 'appType')
    ..aOS(10, 'type')
    ..hasRequiredFields = false
  ;

  AuthRequest() : super();
  AuthRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  AuthRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  AuthRequest clone() => new AuthRequest()..mergeFromMessage(this);
  AuthRequest copyWith(void Function(AuthRequest) updates) => super.copyWith((message) => updates(message as AuthRequest));
  $pb.BuilderInfo get info_ => _i;
  static AuthRequest create() => new AuthRequest();
  AuthRequest createEmptyInstance() => create();
  static $pb.PbList<AuthRequest> createRepeated() => new $pb.PbList<AuthRequest>();
  static AuthRequest getDefault() => _defaultInstance ??= create()..freeze();
  static AuthRequest _defaultInstance;

  String get pwd => $_getS(0, '');
  set pwd(String v) { $_setString(0, v); }
  bool hasPwd() => $_has(0);
  void clearPwd() => clearField(1);

  String get userName => $_getS(1, '');
  set userName(String v) { $_setString(1, v); }
  bool hasUserName() => $_has(1);
  void clearUserName() => clearField(2);

  String get udid => $_getS(2, '');
  set udid(String v) { $_setString(2, v); }
  bool hasUdid() => $_has(2);
  void clearUdid() => clearField(3);

  String get manufacturer => $_getS(3, '');
  set manufacturer(String v) { $_setString(3, v); }
  bool hasManufacturer() => $_has(3);
  void clearManufacturer() => clearField(4);

  String get model => $_getS(4, '');
  set model(String v) { $_setString(4, v); }
  bool hasModel() => $_has(4);
  void clearModel() => clearField(5);

  String get osVersion => $_getS(5, '');
  set osVersion(String v) { $_setString(5, v); }
  bool hasOsVersion() => $_has(5);
  void clearOsVersion() => clearField(6);

  String get appVersion => $_getS(6, '');
  set appVersion(String v) { $_setString(6, v); }
  bool hasAppVersion() => $_has(6);
  void clearAppVersion() => clearField(7);

  String get token => $_getS(7, '');
  set token(String v) { $_setString(7, v); }
  bool hasToken() => $_has(7);
  void clearToken() => clearField(8);

  String get appType => $_getS(8, '');
  set appType(String v) { $_setString(8, v); }
  bool hasAppType() => $_has(8);
  void clearAppType() => clearField(9);

  String get type => $_getS(9, '');
  set type(String v) { $_setString(9, v); }
  bool hasType() => $_has(9);
  void clearType() => clearField(10);
}

class AuthReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('AuthReply', package: const $pb.PackageName('auth'))
    ..a<int>(1, 'code', $pb.PbFieldType.O3)
    ..aOS(2, 'ticket')
    ..a<int>(3, 'accountId', $pb.PbFieldType.O3)
    ..aOS(4, 'error')
    ..hasRequiredFields = false
  ;

  AuthReply() : super();
  AuthReply.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  AuthReply.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  AuthReply clone() => new AuthReply()..mergeFromMessage(this);
  AuthReply copyWith(void Function(AuthReply) updates) => super.copyWith((message) => updates(message as AuthReply));
  $pb.BuilderInfo get info_ => _i;
  static AuthReply create() => new AuthReply();
  AuthReply createEmptyInstance() => create();
  static $pb.PbList<AuthReply> createRepeated() => new $pb.PbList<AuthReply>();
  static AuthReply getDefault() => _defaultInstance ??= create()..freeze();
  static AuthReply _defaultInstance;

  int get code => $_get(0, 0);
  set code(int v) { $_setSignedInt32(0, v); }
  bool hasCode() => $_has(0);
  void clearCode() => clearField(1);

  String get ticket => $_getS(1, '');
  set ticket(String v) { $_setString(1, v); }
  bool hasTicket() => $_has(1);
  void clearTicket() => clearField(2);

  int get accountId => $_get(2, 0);
  set accountId(int v) { $_setSignedInt32(2, v); }
  bool hasAccountId() => $_has(2);
  void clearAccountId() => clearField(3);

  String get error => $_getS(3, '');
  set error(String v) { $_setString(3, v); }
  bool hasError() => $_has(3);
  void clearError() => clearField(4);
}

