import 'dart:async';

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

  // "AmountinINR" field.
  int? _amountinINR;
  int get amountinINR => _amountinINR ?? 0;
  bool hasAmountinINR() => _amountinINR != null;

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

  void _initializeFields() {
    _sentTo = snapshotData['SentTo'] as String?;
    _currency = snapshotData['Currency'] as String?;
    _amount = snapshotData['Amount'] as String?;
    _amountinINR = snapshotData['AmountinINR'] as int?;
    _by = snapshotData['By'] as DocumentReference?;
    _transactiontime = snapshotData['Transactiontime'] as DateTime?;
    _sentToID = snapshotData['SentToID'] as String?;
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
}

Map<String, dynamic> createTransactionHistoryRecordData({
  String? sentTo,
  String? currency,
  String? amount,
  int? amountinINR,
  DocumentReference? by,
  DateTime? transactiontime,
  String? sentToID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'SentTo': sentTo,
      'Currency': currency,
      'Amount': amount,
      'AmountinINR': amountinINR,
      'By': by,
      'Transactiontime': transactiontime,
      'SentToID': sentToID,
    }.withoutNulls,
  );

  return firestoreData;
}
