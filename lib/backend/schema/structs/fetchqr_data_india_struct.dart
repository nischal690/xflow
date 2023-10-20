// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FetchqrDataIndiaStruct extends FFFirebaseStruct {
  FetchqrDataIndiaStruct({
    String? upiid,
    String? name,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _upiid = upiid,
        _name = name,
        super(firestoreUtilData);

  // "upiid" field.
  String? _upiid;
  String get upiid => _upiid ?? '';
  set upiid(String? val) => _upiid = val;
  bool hasUpiid() => _upiid != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  static FetchqrDataIndiaStruct fromMap(Map<String, dynamic> data) =>
      FetchqrDataIndiaStruct(
        upiid: data['upiid'] as String?,
        name: data['name'] as String?,
      );

  static FetchqrDataIndiaStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic>
          ? FetchqrDataIndiaStruct.fromMap(data)
          : null;

  Map<String, dynamic> toMap() => {
        'upiid': _upiid,
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'upiid': serializeParam(
          _upiid,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static FetchqrDataIndiaStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      FetchqrDataIndiaStruct(
        upiid: deserializeParam(
          data['upiid'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FetchqrDataIndiaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FetchqrDataIndiaStruct &&
        upiid == other.upiid &&
        name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([upiid, name]);
}

FetchqrDataIndiaStruct createFetchqrDataIndiaStruct({
  String? upiid,
  String? name,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FetchqrDataIndiaStruct(
      upiid: upiid,
      name: name,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FetchqrDataIndiaStruct? updateFetchqrDataIndiaStruct(
  FetchqrDataIndiaStruct? fetchqrDataIndia, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    fetchqrDataIndia
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFetchqrDataIndiaStructData(
  Map<String, dynamic> firestoreData,
  FetchqrDataIndiaStruct? fetchqrDataIndia,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (fetchqrDataIndia == null) {
    return;
  }
  if (fetchqrDataIndia.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && fetchqrDataIndia.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final fetchqrDataIndiaData =
      getFetchqrDataIndiaFirestoreData(fetchqrDataIndia, forFieldValue);
  final nestedData =
      fetchqrDataIndiaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = fetchqrDataIndia.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFetchqrDataIndiaFirestoreData(
  FetchqrDataIndiaStruct? fetchqrDataIndia, [
  bool forFieldValue = false,
]) {
  if (fetchqrDataIndia == null) {
    return {};
  }
  final firestoreData = mapToFirestore(fetchqrDataIndia.toMap());

  // Add any Firestore field values
  fetchqrDataIndia.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFetchqrDataIndiaListFirestoreData(
  List<FetchqrDataIndiaStruct>? fetchqrDataIndias,
) =>
    fetchqrDataIndias
        ?.map((e) => getFetchqrDataIndiaFirestoreData(e, true))
        .toList() ??
    [];
