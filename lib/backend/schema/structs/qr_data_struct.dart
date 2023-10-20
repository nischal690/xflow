// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QrDataStruct extends FFFirebaseStruct {
  QrDataStruct({
    String? merchantid,
    String? billerid,
    String? amount,
    String? walletID,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _merchantid = merchantid,
        _billerid = billerid,
        _amount = amount,
        _walletID = walletID,
        super(firestoreUtilData);

  // "Merchantid" field.
  String? _merchantid;
  String get merchantid => _merchantid ?? '';
  set merchantid(String? val) => _merchantid = val;
  bool hasMerchantid() => _merchantid != null;

  // "Billerid" field.
  String? _billerid;
  String get billerid => _billerid ?? '';
  set billerid(String? val) => _billerid = val;
  bool hasBillerid() => _billerid != null;

  // "Amount" field.
  String? _amount;
  String get amount => _amount ?? '';
  set amount(String? val) => _amount = val;
  bool hasAmount() => _amount != null;

  // "walletID" field.
  String? _walletID;
  String get walletID => _walletID ?? '';
  set walletID(String? val) => _walletID = val;
  bool hasWalletID() => _walletID != null;

  static QrDataStruct fromMap(Map<String, dynamic> data) => QrDataStruct(
        merchantid: data['Merchantid'] as String?,
        billerid: data['Billerid'] as String?,
        amount: data['Amount'] as String?,
        walletID: data['walletID'] as String?,
      );

  static QrDataStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? QrDataStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'Merchantid': _merchantid,
        'Billerid': _billerid,
        'Amount': _amount,
        'walletID': _walletID,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Merchantid': serializeParam(
          _merchantid,
          ParamType.String,
        ),
        'Billerid': serializeParam(
          _billerid,
          ParamType.String,
        ),
        'Amount': serializeParam(
          _amount,
          ParamType.String,
        ),
        'walletID': serializeParam(
          _walletID,
          ParamType.String,
        ),
      }.withoutNulls;

  static QrDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      QrDataStruct(
        merchantid: deserializeParam(
          data['Merchantid'],
          ParamType.String,
          false,
        ),
        billerid: deserializeParam(
          data['Billerid'],
          ParamType.String,
          false,
        ),
        amount: deserializeParam(
          data['Amount'],
          ParamType.String,
          false,
        ),
        walletID: deserializeParam(
          data['walletID'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'QrDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is QrDataStruct &&
        merchantid == other.merchantid &&
        billerid == other.billerid &&
        amount == other.amount &&
        walletID == other.walletID;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([merchantid, billerid, amount, walletID]);
}

QrDataStruct createQrDataStruct({
  String? merchantid,
  String? billerid,
  String? amount,
  String? walletID,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    QrDataStruct(
      merchantid: merchantid,
      billerid: billerid,
      amount: amount,
      walletID: walletID,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

QrDataStruct? updateQrDataStruct(
  QrDataStruct? qrData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    qrData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addQrDataStructData(
  Map<String, dynamic> firestoreData,
  QrDataStruct? qrData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (qrData == null) {
    return;
  }
  if (qrData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && qrData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final qrDataData = getQrDataFirestoreData(qrData, forFieldValue);
  final nestedData = qrDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = qrData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getQrDataFirestoreData(
  QrDataStruct? qrData, [
  bool forFieldValue = false,
]) {
  if (qrData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(qrData.toMap());

  // Add any Firestore field values
  qrData.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getQrDataListFirestoreData(
  List<QrDataStruct>? qrDatas,
) =>
    qrDatas?.map((e) => getQrDataFirestoreData(e, true)).toList() ?? [];
