import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'transaction_history_record.g.dart';

abstract class TransactionHistoryRecord
    implements
        Built<TransactionHistoryRecord, TransactionHistoryRecordBuilder> {
  static Serializer<TransactionHistoryRecord> get serializer =>
      _$transactionHistoryRecordSerializer;

  @BuiltValueField(wireName: 'SentTo')
  String? get sentTo;

  @BuiltValueField(wireName: 'Currency')
  String? get currency;

  @BuiltValueField(wireName: 'Amount')
  String? get amount;

  @BuiltValueField(wireName: 'AmountinINR')
  int? get amountinINR;

  @BuiltValueField(wireName: 'By')
  DocumentReference? get by;

  @BuiltValueField(wireName: 'Transactiontime')
  DateTime? get transactiontime;

  @BuiltValueField(wireName: 'SentToID')
  String? get sentToID;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TransactionHistoryRecordBuilder builder) =>
      builder
        ..sentTo = ''
        ..currency = ''
        ..amount = ''
        ..amountinINR = 0
        ..sentToID = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Transaction_History');

  static Stream<TransactionHistoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TransactionHistoryRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TransactionHistoryRecord._();
  factory TransactionHistoryRecord(
          [void Function(TransactionHistoryRecordBuilder) updates]) =
      _$TransactionHistoryRecord;

  static TransactionHistoryRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
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
  final firestoreData = serializers.toFirestore(
    TransactionHistoryRecord.serializer,
    TransactionHistoryRecord(
      (t) => t
        ..sentTo = sentTo
        ..currency = currency
        ..amount = amount
        ..amountinINR = amountinINR
        ..by = by
        ..transactiontime = transactiontime
        ..sentToID = sentToID,
    ),
  );

  return firestoreData;
}
