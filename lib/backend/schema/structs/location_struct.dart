// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocationStruct extends FFFirebaseStruct {
  LocationStruct({
    LatLng? latLang,
    String? name,
    String? address,
    String? city,
    String? state,
    String? country,
    String? zipcode,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _latLang = latLang,
        _name = name,
        _address = address,
        _city = city,
        _state = state,
        _country = country,
        _zipcode = zipcode,
        super(firestoreUtilData);

  // "latLang" field.
  LatLng? _latLang;
  LatLng? get latLang => _latLang;
  set latLang(LatLng? val) => _latLang = val;
  bool hasLatLang() => _latLang != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;
  bool hasAddress() => _address != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;
  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;
  bool hasState() => _state != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;
  bool hasCountry() => _country != null;

  // "Zipcode" field.
  String? _zipcode;
  String get zipcode => _zipcode ?? '';
  set zipcode(String? val) => _zipcode = val;
  bool hasZipcode() => _zipcode != null;

  static LocationStruct fromMap(Map<String, dynamic> data) => LocationStruct(
        latLang: data['latLang'] as LatLng?,
        name: data['name'] as String?,
        address: data['address'] as String?,
        city: data['city'] as String?,
        state: data['state'] as String?,
        country: data['country'] as String?,
        zipcode: data['Zipcode'] as String?,
      );

  static LocationStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? LocationStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'latLang': _latLang,
        'name': _name,
        'address': _address,
        'city': _city,
        'state': _state,
        'country': _country,
        'Zipcode': _zipcode,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'latLang': serializeParam(
          _latLang,
          ParamType.LatLng,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
        'country': serializeParam(
          _country,
          ParamType.String,
        ),
        'Zipcode': serializeParam(
          _zipcode,
          ParamType.String,
        ),
      }.withoutNulls;

  static LocationStruct fromSerializableMap(Map<String, dynamic> data) =>
      LocationStruct(
        latLang: deserializeParam(
          data['latLang'],
          ParamType.LatLng,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.String,
          false,
        ),
        country: deserializeParam(
          data['country'],
          ParamType.String,
          false,
        ),
        zipcode: deserializeParam(
          data['Zipcode'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LocationStruct(${toMap()})';
}

LocationStruct createLocationStruct({
  LatLng? latLang,
  String? name,
  String? address,
  String? city,
  String? state,
  String? country,
  String? zipcode,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LocationStruct(
      latLang: latLang,
      name: name,
      address: address,
      city: city,
      state: state,
      country: country,
      zipcode: zipcode,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LocationStruct? updateLocationStruct(
  LocationStruct? location, {
  bool clearUnsetFields = true,
}) =>
    location
      ?..firestoreUtilData =
          FirestoreUtilData(clearUnsetFields: clearUnsetFields);

void addLocationStructData(
  Map<String, dynamic> firestoreData,
  LocationStruct? location,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (location == null) {
    return;
  }
  if (location.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && location.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final locationData = getLocationFirestoreData(location, forFieldValue);
  final nestedData = locationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = location.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLocationFirestoreData(
  LocationStruct? location, [
  bool forFieldValue = false,
]) {
  if (location == null) {
    return {};
  }
  final firestoreData = mapToFirestore(location.toMap());

  // Add any Firestore field values
  location.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLocationListFirestoreData(
  List<LocationStruct>? locations,
) =>
    locations?.map((e) => getLocationFirestoreData(e, true)).toList() ?? [];
