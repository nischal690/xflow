import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  int? get logincount;

  String? get uid;

  String? get country;

  @BuiltValueField(wireName: 'Currencytype')
  String? get currencytype;

  @BuiltValueField(wireName: 'amount_in_wallet')
  int? get amountInWallet;

  LatLng? get latlang;

  String? get currenciessymbol;

  String? get title;

  @BuiltValueField(wireName: 'DOB')
  DateTime? get dob;

  LocationStruct get residentialLocation;

  BuiltList<String>? get posttags;

  BuiltList<DocumentReference>? get followers;

  BuiltList<DocumentReference>? get followings;

  LocationStruct get currentLocation;

  bool? get guide;

  String? get chargefor;

  double? get chargeamount;

  BuiltList<String>? get guideCities;

  String? get type;

  BuiltList<String>? get beento;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..phoneNumber = ''
    ..logincount = 0
    ..uid = ''
    ..country = ''
    ..currencytype = ''
    ..amountInWallet = 0
    ..currenciessymbol = ''
    ..title = ''
    ..residentialLocation = LocationStructBuilder()
    ..posttags = ListBuilder()
    ..followers = ListBuilder()
    ..followings = ListBuilder()
    ..currentLocation = LocationStructBuilder()
    ..guide = false
    ..chargefor = ''
    ..chargeamount = 0.0
    ..guideCities = ListBuilder()
    ..type = ''
    ..beento = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  DateTime? createdTime,
  String? phoneNumber,
  int? logincount,
  String? uid,
  String? country,
  String? currencytype,
  int? amountInWallet,
  LatLng? latlang,
  String? currenciessymbol,
  String? title,
  DateTime? dob,
  LocationStruct? residentialLocation,
  LocationStruct? currentLocation,
  bool? guide,
  String? chargefor,
  double? chargeamount,
  String? type,
}) {
  final firestoreData = serializers.toFirestore(
    UsersRecord.serializer,
    UsersRecord(
      (u) => u
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..logincount = logincount
        ..uid = uid
        ..country = country
        ..currencytype = currencytype
        ..amountInWallet = amountInWallet
        ..latlang = latlang
        ..currenciessymbol = currenciessymbol
        ..title = title
        ..dob = dob
        ..residentialLocation = LocationStructBuilder()
        ..posttags = null
        ..followers = null
        ..followings = null
        ..currentLocation = LocationStructBuilder()
        ..guide = guide
        ..chargefor = chargefor
        ..chargeamount = chargeamount
        ..guideCities = null
        ..type = type
        ..beento = null,
    ),
  );

  // Handle nested data for "residentialLocation" field.
  addLocationStructData(
      firestoreData, residentialLocation, 'residentialLocation');

  // Handle nested data for "currentLocation" field.
  addLocationStructData(firestoreData, currentLocation, 'currentLocation');

  return firestoreData;
}
