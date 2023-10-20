import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionHistoryRecord extends FirestoreRecord {
  TransactionHistoryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "SentTo" field.
  String? _sentTo;
  String get sentTo => _sentTo ?? '';
  bool hasSentTo() => _sentTo != null;

  // "Currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  bool hasCurrency() => _currency != null;

  // "Amount" field.
  String? _amount;
  String get amount => _amount ?? '';
  bool hasAmount() => _amount != null;

  // "By" field.
  DocumentReference? _by;
  DocumentReference? get by => _by;
  bool hasBy() => _by != null;

  // "Transactiontime" field.
  DateTime? _transactiontime;
  DateTime? get transactiontime => _transactiontime;
  bool hasTransactiontime() => _transactiontime != null;

  // "SentToID" field.
  String? _sentToID;
  String get sentToID => _sentToID ?? '';
  bool hasSentToID() => _sentToID != null;

  // "QRdata" field.
  String? _qRdata;
  String get qRdata => _qRdata ?? '';
  bool hasQRdata() => _qRdata != null;

  // "success" field.
  bool? _success;
  bool get success => _success ?? false;
  bool hasSuccess() => _success != null;

  // "merchantid" field.
  String? _merchantid;
  String get merchantid => _merchantid ?? '';
  bool hasMerchantid() => _merchantid != null;

  // "billerid" field.
  String? _billerid;
  String get billerid => _billerid ?? '';
  bool hasBillerid() => _billerid != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "upiid" field.
  String? _upiid;
  String get upiid => _upiid ?? '';
  bool hasUpiid() => _upiid != null;

  // "walletID" field.
  String? _walletID;
  String get walletID => _walletID ?? '';
  bool hasWalletID() => _walletID != null;

  // "pay" field.
  bool? _pay;
  bool get pay => _pay ?? false;
  bool hasPay() => _pay != null;

  // "phonenumber" field.
  String? _phonenumber;
  String get phonenumber => _phonenumber ?? '';
  bool hasPhonenumber() => _phonenumber != null;

  void _initializeFields() {
    _sentTo = snapshotData['SentTo'] as String?;
    _currency = snapshotData['Currency'] as String?;
    _amount = snapshotData['Amount'] as String?;
    _by = snapshotData['By'] as DocumentReference?;
    _transactiontime = snapshotData['Transactiontime'] as DateTime?;
    _sentToID = snapshotData['SentToID'] as String?;
    _qRdata = snapshotData['QRdata'] as String?;
    _success = snapshotData['success'] as bool?;
    _merchantid = snapshotData['merchantid'] as String?;
    _billerid = snapshotData['billerid'] as String?;
    _country = snapshotData['country'] as String?;
    _upiid = snapshotData['upiid'] as String?;
    _walletID = snapshotData['walletID'] as String?;
    _pay = snapshotData['pay'] as bool?;
    _phonenumber = snapshotData['phonenumber'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Transaction_History');

  static Stream<TransactionHistoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TransactionHistoryRecord.fromSnapshot(s));

  static Future<TransactionHistoryRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => TransactionHistoryRecord.fromSnapshot(s));

  static TransactionHistoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TransactionHistoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TransactionHistoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TransactionHistoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TransactionHistoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TransactionHistoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTransactionHistoryRecordData({
  String? sentTo,
  String? currency,
  String? amount,
  DocumentReference? by,
  DateTime? transactiontime,
  String? sentToID,
  String? qRdata,
  bool? success,
  String? merchantid,
  String? billerid,
  String? country,
  String? upiid,
  String? walletID,
  bool? pay,
  String? phonenumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'SentTo': sentTo,
      'Currency': currency,
      'Amount': amount,
      'By': by,
      'Transactiontime': transactiontime,
      'SentToID': sentToID,
      'QRdata': qRdata,
      'success': success,
      'merchantid': merchantid,
      'billerid': billerid,
      'country': country,
      'upiid': upiid,
      'walletID': walletID,
      'pay': pay,
      'phonenumber': phonenumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class TransactionHistoryRecordDocumentEquality
    implements Equality<TransactionHistoryRecord> {
  const TransactionHistoryRecordDocumentEquality();

  @override
  bool equals(TransactionHistoryRecord? e1, TransactionHistoryRecord? e2) {
    return e1?.sentTo == e2?.sentTo &&
        e1?.currency == e2?.currency &&
        e1?.amount == e2?.amount &&
        e1?.by == e2?.by &&
        e1?.transactiontime == e2?.transactiontime &&
        e1?.sentToID == e2?.sentToID &&
        e1?.qRdata == e2?.qRdata &&
        e1?.success == e2?.success &&
        e1?.merchantid == e2?.merchantid &&
        e1?.billerid == e2?.billerid &&
        e1?.country == e2?.country &&
        e1?.upiid == e2?.upiid &&
        e1?.walletID == e2?.walletID &&
        e1?.pay == e2?.pay &&
        e1?.phonenumber == e2?.phonenumber;
  }

  @override
  int hash(TransactionHistoryRecord? e) => const ListEquality().hash([
        e?.sentTo,
        e?.currency,
        e?.amount,
        e?.by,
        e?.transactiontime,
        e?.sentToID,
        e?.qRdata,
        e?.success,
        e?.merchantid,
        e?.billerid,
        e?.country,
        e?.upiid,
        e?.walletID,
        e?.pay,
        e?.phonenumber
      ]);

  @override
  bool isValidKey(Object? o) => o is TransactionHistoryRecord;
}
