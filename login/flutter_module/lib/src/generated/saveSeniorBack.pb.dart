///
//  Generated code. Do not modify.
//  source: saveSeniorBack.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:protobuf/protobuf.dart' as $pb;

class SaveSeniorBackRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('SaveSeniorBackRequest', package: const $pb.PackageName('auth'))
    ..aOS(1, 'cmd')
    ..aOS(2, 'udid')
    ..aOS(3, 'userName')
    ..aOS(4, 'ticket')
    ..a<int>(5, 'seniorId', $pb.PbFieldType.O3)
    ..a<int>(6, 'timeFlag', $pb.PbFieldType.O3)
    ..a<int>(7, 'cognitiveType', $pb.PbFieldType.O3)
    ..a<int>(8, 'backable', $pb.PbFieldType.O3)
    ..a<int>(9, 'outFlag', $pb.PbFieldType.O3)
    ..aOS(10, 'desc')
    ..hasRequiredFields = false
  ;

  SaveSeniorBackRequest() : super();
  SaveSeniorBackRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  SaveSeniorBackRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  SaveSeniorBackRequest clone() => new SaveSeniorBackRequest()..mergeFromMessage(this);
  SaveSeniorBackRequest copyWith(void Function(SaveSeniorBackRequest) updates) => super.copyWith((message) => updates(message as SaveSeniorBackRequest));
  $pb.BuilderInfo get info_ => _i;
  static SaveSeniorBackRequest create() => new SaveSeniorBackRequest();
  SaveSeniorBackRequest createEmptyInstance() => create();
  static $pb.PbList<SaveSeniorBackRequest> createRepeated() => new $pb.PbList<SaveSeniorBackRequest>();
  static SaveSeniorBackRequest getDefault() => _defaultInstance ??= create()..freeze();
  static SaveSeniorBackRequest _defaultInstance;

  String get cmd => $_getS(0, '');
  set cmd(String v) { $_setString(0, v); }
  bool hasCmd() => $_has(0);
  void clearCmd() => clearField(1);

  String get udid => $_getS(1, '');
  set udid(String v) { $_setString(1, v); }
  bool hasUdid() => $_has(1);
  void clearUdid() => clearField(2);

  String get userName => $_getS(2, '');
  set userName(String v) { $_setString(2, v); }
  bool hasUserName() => $_has(2);
  void clearUserName() => clearField(3);

  String get ticket => $_getS(3, '');
  set ticket(String v) { $_setString(3, v); }
  bool hasTicket() => $_has(3);
  void clearTicket() => clearField(4);

  int get seniorId => $_get(4, 0);
  set seniorId(int v) { $_setSignedInt32(4, v); }
  bool hasSeniorId() => $_has(4);
  void clearSeniorId() => clearField(5);

  int get timeFlag => $_get(5, 0);
  set timeFlag(int v) { $_setSignedInt32(5, v); }
  bool hasTimeFlag() => $_has(5);
  void clearTimeFlag() => clearField(6);

  int get cognitiveType => $_get(6, 0);
  set cognitiveType(int v) { $_setSignedInt32(6, v); }
  bool hasCognitiveType() => $_has(6);
  void clearCognitiveType() => clearField(7);

  int get backable => $_get(7, 0);
  set backable(int v) { $_setSignedInt32(7, v); }
  bool hasBackable() => $_has(7);
  void clearBackable() => clearField(8);

  int get outFlag => $_get(8, 0);
  set outFlag(int v) { $_setSignedInt32(8, v); }
  bool hasOutFlag() => $_has(8);
  void clearOutFlag() => clearField(9);

  String get desc => $_getS(9, '');
  set desc(String v) { $_setString(9, v); }
  bool hasDesc() => $_has(9);
  void clearDesc() => clearField(10);
}

class SaveSeniorBackReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('SaveSeniorBackReply', package: const $pb.PackageName('auth'))
    ..a<int>(1, 'code', $pb.PbFieldType.O3)
    ..aOS(2, 'error')
    ..hasRequiredFields = false
  ;

  SaveSeniorBackReply() : super();
  SaveSeniorBackReply.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  SaveSeniorBackReply.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  SaveSeniorBackReply clone() => new SaveSeniorBackReply()..mergeFromMessage(this);
  SaveSeniorBackReply copyWith(void Function(SaveSeniorBackReply) updates) => super.copyWith((message) => updates(message as SaveSeniorBackReply));
  $pb.BuilderInfo get info_ => _i;
  static SaveSeniorBackReply create() => new SaveSeniorBackReply();
  SaveSeniorBackReply createEmptyInstance() => create();
  static $pb.PbList<SaveSeniorBackReply> createRepeated() => new $pb.PbList<SaveSeniorBackReply>();
  static SaveSeniorBackReply getDefault() => _defaultInstance ??= create()..freeze();
  static SaveSeniorBackReply _defaultInstance;

  int get code => $_get(0, 0);
  set code(int v) { $_setSignedInt32(0, v); }
  bool hasCode() => $_has(0);
  void clearCode() => clearField(1);

  String get error => $_getS(1, '');
  set error(String v) { $_setString(1, v); }
  bool hasError() => $_has(1);
  void clearError() => clearField(2);
}

