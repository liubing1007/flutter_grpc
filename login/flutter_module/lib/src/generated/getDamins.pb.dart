///
//  Generated code. Do not modify.
//  source: getDamins.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:protobuf/protobuf.dart' as $pb;

class DaminRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('DaminRequest', package: const $pb.PackageName('auth'))
    ..aOS(1, 'cmd')
    ..aOS(2, 'udid')
    ..aOS(3, 'userName')
    ..aOS(4, 'ticket')
    ..hasRequiredFields = false
  ;

  DaminRequest() : super();
  DaminRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DaminRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DaminRequest clone() => new DaminRequest()..mergeFromMessage(this);
  DaminRequest copyWith(void Function(DaminRequest) updates) => super.copyWith((message) => updates(message as DaminRequest));
  $pb.BuilderInfo get info_ => _i;
  static DaminRequest create() => new DaminRequest();
  DaminRequest createEmptyInstance() => create();
  static $pb.PbList<DaminRequest> createRepeated() => new $pb.PbList<DaminRequest>();
  static DaminRequest getDefault() => _defaultInstance ??= create()..freeze();
  static DaminRequest _defaultInstance;

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
}

class DaminReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('DaminReply', package: const $pb.PackageName('auth'))
    ..a<int>(1, 'code', $pb.PbFieldType.O3)
    ..aOS(2, 'error')
    ..pc<Domain>(3, 'domains', $pb.PbFieldType.PM,Domain.create)
    ..hasRequiredFields = false
  ;

  DaminReply() : super();
  DaminReply.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DaminReply.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DaminReply clone() => new DaminReply()..mergeFromMessage(this);
  DaminReply copyWith(void Function(DaminReply) updates) => super.copyWith((message) => updates(message as DaminReply));
  $pb.BuilderInfo get info_ => _i;
  static DaminReply create() => new DaminReply();
  DaminReply createEmptyInstance() => create();
  static $pb.PbList<DaminReply> createRepeated() => new $pb.PbList<DaminReply>();
  static DaminReply getDefault() => _defaultInstance ??= create()..freeze();
  static DaminReply _defaultInstance;

  int get code => $_get(0, 0);
  set code(int v) { $_setSignedInt32(0, v); }
  bool hasCode() => $_has(0);
  void clearCode() => clearField(1);

  String get error => $_getS(1, '');
  set error(String v) { $_setString(1, v); }
  bool hasError() => $_has(1);
  void clearError() => clearField(2);

  List<Domain> get domains => $_getList(2);
}

class Domain extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Domain', package: const $pb.PackageName('auth'))
    ..a<int>(1, 'id', $pb.PbFieldType.O3)
    ..aOS(2, 'name')
    ..a<int>(3, 'attempt', $pb.PbFieldType.O3)
    ..aOS(4, 'displayName')
    ..aOS(5, 'description')
    ..a<int>(6, 'salaryPerHour', $pb.PbFieldType.O3)
    ..aOS(7, 'email')
    ..aOS(8, 'phone')
    ..aOS(9, 'tel')
    ..aOS(10, 'creationTime')
    ..aOS(11, 'lastModified')
    ..a<int>(12, 'status', $pb.PbFieldType.O3)
    ..a<AddressInfo>(13, 'addressInfo', $pb.PbFieldType.OM, AddressInfo.getDefault, AddressInfo.create)
    ..aOB(14, 'bookOnline')
    ..aOB(15, 'appointmentVisit')
    ..a<int>(16, 'seniorTotal', $pb.PbFieldType.O3)
    ..a<int>(18, 'wokerTotal', $pb.PbFieldType.O3)
    ..a<int>(19, 'bedTotal', $pb.PbFieldType.O3)
    ..aOB(20, 'withdrawFlag')
    ..a<int>(21, 'type', $pb.PbFieldType.O3)
    ..a<int>(22, 'businessMode', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Domain() : super();
  Domain.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Domain.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Domain clone() => new Domain()..mergeFromMessage(this);
  Domain copyWith(void Function(Domain) updates) => super.copyWith((message) => updates(message as Domain));
  $pb.BuilderInfo get info_ => _i;
  static Domain create() => new Domain();
  Domain createEmptyInstance() => create();
  static $pb.PbList<Domain> createRepeated() => new $pb.PbList<Domain>();
  static Domain getDefault() => _defaultInstance ??= create()..freeze();
  static Domain _defaultInstance;

  int get id => $_get(0, 0);
  set id(int v) { $_setSignedInt32(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  String get name => $_getS(1, '');
  set name(String v) { $_setString(1, v); }
  bool hasName() => $_has(1);
  void clearName() => clearField(2);

  int get attempt => $_get(2, 0);
  set attempt(int v) { $_setSignedInt32(2, v); }
  bool hasAttempt() => $_has(2);
  void clearAttempt() => clearField(3);

  String get displayName => $_getS(3, '');
  set displayName(String v) { $_setString(3, v); }
  bool hasDisplayName() => $_has(3);
  void clearDisplayName() => clearField(4);

  String get description => $_getS(4, '');
  set description(String v) { $_setString(4, v); }
  bool hasDescription() => $_has(4);
  void clearDescription() => clearField(5);

  int get salaryPerHour => $_get(5, 0);
  set salaryPerHour(int v) { $_setSignedInt32(5, v); }
  bool hasSalaryPerHour() => $_has(5);
  void clearSalaryPerHour() => clearField(6);

  String get email => $_getS(6, '');
  set email(String v) { $_setString(6, v); }
  bool hasEmail() => $_has(6);
  void clearEmail() => clearField(7);

  String get phone => $_getS(7, '');
  set phone(String v) { $_setString(7, v); }
  bool hasPhone() => $_has(7);
  void clearPhone() => clearField(8);

  String get tel => $_getS(8, '');
  set tel(String v) { $_setString(8, v); }
  bool hasTel() => $_has(8);
  void clearTel() => clearField(9);

  String get creationTime => $_getS(9, '');
  set creationTime(String v) { $_setString(9, v); }
  bool hasCreationTime() => $_has(9);
  void clearCreationTime() => clearField(10);

  String get lastModified => $_getS(10, '');
  set lastModified(String v) { $_setString(10, v); }
  bool hasLastModified() => $_has(10);
  void clearLastModified() => clearField(11);

  int get status => $_get(11, 0);
  set status(int v) { $_setSignedInt32(11, v); }
  bool hasStatus() => $_has(11);
  void clearStatus() => clearField(12);

  AddressInfo get addressInfo => $_getN(12);
  set addressInfo(AddressInfo v) { setField(13, v); }
  bool hasAddressInfo() => $_has(12);
  void clearAddressInfo() => clearField(13);

  bool get bookOnline => $_get(13, false);
  set bookOnline(bool v) { $_setBool(13, v); }
  bool hasBookOnline() => $_has(13);
  void clearBookOnline() => clearField(14);

  bool get appointmentVisit => $_get(14, false);
  set appointmentVisit(bool v) { $_setBool(14, v); }
  bool hasAppointmentVisit() => $_has(14);
  void clearAppointmentVisit() => clearField(15);

  int get seniorTotal => $_get(15, 0);
  set seniorTotal(int v) { $_setSignedInt32(15, v); }
  bool hasSeniorTotal() => $_has(15);
  void clearSeniorTotal() => clearField(16);

  int get wokerTotal => $_get(16, 0);
  set wokerTotal(int v) { $_setSignedInt32(16, v); }
  bool hasWokerTotal() => $_has(16);
  void clearWokerTotal() => clearField(18);

  int get bedTotal => $_get(17, 0);
  set bedTotal(int v) { $_setSignedInt32(17, v); }
  bool hasBedTotal() => $_has(17);
  void clearBedTotal() => clearField(19);

  bool get withdrawFlag => $_get(18, false);
  set withdrawFlag(bool v) { $_setBool(18, v); }
  bool hasWithdrawFlag() => $_has(18);
  void clearWithdrawFlag() => clearField(20);

  int get type => $_get(19, 0);
  set type(int v) { $_setSignedInt32(19, v); }
  bool hasType() => $_has(19);
  void clearType() => clearField(21);

  int get businessMode => $_get(20, 0);
  set businessMode(int v) { $_setSignedInt32(20, v); }
  bool hasBusinessMode() => $_has(20);
  void clearBusinessMode() => clearField(22);
}

class AddressInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('AddressInfo', package: const $pb.PackageName('auth'))
    ..a<int>(1, 'id', $pb.PbFieldType.O3)
    ..aOS(2, 'streetLine')
    ..aOS(3, 'city')
    ..aOS(4, 'state')
    ..aOS(5, 'country')
    ..aOS(6, 'zipCode')
    ..aOS(7, 'lat')
    ..aOS(8, 'lng')
    ..aOS(9, 'district')
    ..hasRequiredFields = false
  ;

  AddressInfo() : super();
  AddressInfo.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  AddressInfo.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  AddressInfo clone() => new AddressInfo()..mergeFromMessage(this);
  AddressInfo copyWith(void Function(AddressInfo) updates) => super.copyWith((message) => updates(message as AddressInfo));
  $pb.BuilderInfo get info_ => _i;
  static AddressInfo create() => new AddressInfo();
  AddressInfo createEmptyInstance() => create();
  static $pb.PbList<AddressInfo> createRepeated() => new $pb.PbList<AddressInfo>();
  static AddressInfo getDefault() => _defaultInstance ??= create()..freeze();
  static AddressInfo _defaultInstance;

  int get id => $_get(0, 0);
  set id(int v) { $_setSignedInt32(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  String get streetLine => $_getS(1, '');
  set streetLine(String v) { $_setString(1, v); }
  bool hasStreetLine() => $_has(1);
  void clearStreetLine() => clearField(2);

  String get city => $_getS(2, '');
  set city(String v) { $_setString(2, v); }
  bool hasCity() => $_has(2);
  void clearCity() => clearField(3);

  String get state => $_getS(3, '');
  set state(String v) { $_setString(3, v); }
  bool hasState() => $_has(3);
  void clearState() => clearField(4);

  String get country => $_getS(4, '');
  set country(String v) { $_setString(4, v); }
  bool hasCountry() => $_has(4);
  void clearCountry() => clearField(5);

  String get zipCode => $_getS(5, '');
  set zipCode(String v) { $_setString(5, v); }
  bool hasZipCode() => $_has(5);
  void clearZipCode() => clearField(6);

  String get lat => $_getS(6, '');
  set lat(String v) { $_setString(6, v); }
  bool hasLat() => $_has(6);
  void clearLat() => clearField(7);

  String get lng => $_getS(7, '');
  set lng(String v) { $_setString(7, v); }
  bool hasLng() => $_has(7);
  void clearLng() => clearField(8);

  String get district => $_getS(8, '');
  set district(String v) { $_setString(8, v); }
  bool hasDistrict() => $_has(8);
  void clearDistrict() => clearField(9);
}

