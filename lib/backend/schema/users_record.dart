import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "logincount" field.
  int? _logincount;
  int get logincount => _logincount ?? 0;
  bool hasLogincount() => _logincount != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "Currencytype" field.
  String? _currencytype;
  String get currencytype => _currencytype ?? '';
  bool hasCurrencytype() => _currencytype != null;

  // "amount_in_wallet" field.
  int? _amountInWallet;
  int get amountInWallet => _amountInWallet ?? 0;
  bool hasAmountInWallet() => _amountInWallet != null;

  // "latlang" field.
  LatLng? _latlang;
  LatLng? get latlang => _latlang;
  bool hasLatlang() => _latlang != null;

  // "currenciessymbol" field.
  String? _currenciessymbol;
  String get currenciessymbol => _currenciessymbol ?? '';
  bool hasCurrenciessymbol() => _currenciessymbol != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "DOB" field.
  DateTime? _dob;
  DateTime? get dob => _dob;
  bool hasDob() => _dob != null;

  // "residentialLocation" field.
  LocationStruct? _residentialLocation;
  LocationStruct get residentialLocation =>
      _residentialLocation ?? LocationStruct();
  bool hasResidentialLocation() => _residentialLocation != null;

  // "posttags" field.
  List<String>? _posttags;
  List<String> get posttags => _posttags ?? const [];
  bool hasPosttags() => _posttags != null;

  // "followers" field.
  List<DocumentReference>? _followers;
  List<DocumentReference> get followers => _followers ?? const [];
  bool hasFollowers() => _followers != null;

  // "followings" field.
  List<DocumentReference>? _followings;
  List<DocumentReference> get followings => _followings ?? const [];
  bool hasFollowings() => _followings != null;

  // "currentLocation" field.
  LocationStruct? _currentLocation;
  LocationStruct get currentLocation => _currentLocation ?? LocationStruct();
  bool hasCurrentLocation() => _currentLocation != null;

  // "guide" field.
  bool? _guide;
  bool get guide => _guide ?? false;
  bool hasGuide() => _guide != null;

  // "chargefor" field.
  String? _chargefor;
  String get chargefor => _chargefor ?? '';
  bool hasChargefor() => _chargefor != null;

  // "chargeamount" field.
  double? _chargeamount;
  double get chargeamount => _chargeamount ?? 0.0;
  bool hasChargeamount() => _chargeamount != null;

  // "guideCities" field.
  List<String>? _guideCities;
  List<String> get guideCities => _guideCities ?? const [];
  bool hasGuideCities() => _guideCities != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "beento" field.
  List<String>? _beento;
  List<String> get beento => _beento ?? const [];
  bool hasBeento() => _beento != null;

  // "waitlistjoined" field.
  bool? _waitlistjoined;
  bool get waitlistjoined => _waitlistjoined ?? false;
  bool hasWaitlistjoined() => _waitlistjoined != null;

  // "savedPosts" field.
  List<DocumentReference>? _savedPosts;
  List<DocumentReference> get savedPosts => _savedPosts ?? const [];
  bool hasSavedPosts() => _savedPosts != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _logincount = snapshotData['logincount'] as int?;
    _uid = snapshotData['uid'] as String?;
    _country = snapshotData['country'] as String?;
    _currencytype = snapshotData['Currencytype'] as String?;
    _amountInWallet = snapshotData['amount_in_wallet'] as int?;
    _latlang = snapshotData['latlang'] as LatLng?;
    _currenciessymbol = snapshotData['currenciessymbol'] as String?;
    _title = snapshotData['title'] as String?;
    _dob = snapshotData['DOB'] as DateTime?;
    _residentialLocation =
        LocationStruct.maybeFromMap(snapshotData['residentialLocation']);
    _posttags = getDataList(snapshotData['posttags']);
    _followers = getDataList(snapshotData['followers']);
    _followings = getDataList(snapshotData['followings']);
    _currentLocation =
        LocationStruct.maybeFromMap(snapshotData['currentLocation']);
    _guide = snapshotData['guide'] as bool?;
    _chargefor = snapshotData['chargefor'] as String?;
    _chargeamount = castToType<double>(snapshotData['chargeamount']);
    _guideCities = getDataList(snapshotData['guideCities']);
    _type = snapshotData['type'] as String?;
    _beento = getDataList(snapshotData['beento']);
    _waitlistjoined = snapshotData['waitlistjoined'] as bool?;
    _savedPosts = getDataList(snapshotData['savedPosts']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';
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
  bool? waitlistjoined,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'logincount': logincount,
      'uid': uid,
      'country': country,
      'Currencytype': currencytype,
      'amount_in_wallet': amountInWallet,
      'latlang': latlang,
      'currenciessymbol': currenciessymbol,
      'title': title,
      'DOB': dob,
      'residentialLocation': LocationStruct().toMap(),
      'currentLocation': LocationStruct().toMap(),
      'guide': guide,
      'chargefor': chargefor,
      'chargeamount': chargeamount,
      'type': type,
      'waitlistjoined': waitlistjoined,
    }.withoutNulls,
  );

  // Handle nested data for "residentialLocation" field.
  addLocationStructData(
      firestoreData, residentialLocation, 'residentialLocation');

  // Handle nested data for "currentLocation" field.
  addLocationStructData(firestoreData, currentLocation, 'currentLocation');

  return firestoreData;
}
