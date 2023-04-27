import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'interest_record.g.dart';

abstract class InterestRecord
    implements Built<InterestRecord, InterestRecordBuilder> {
  static Serializer<InterestRecord> get serializer =>
      _$interestRecordSerializer;

  String? get interestname;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(InterestRecordBuilder builder) =>
      builder..interestname = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('interest')
          : FirebaseFirestore.instance.collectionGroup('interest');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('interest').doc();

  static Stream<InterestRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<InterestRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  InterestRecord._();
  factory InterestRecord([void Function(InterestRecordBuilder) updates]) =
      _$InterestRecord;

  static InterestRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createInterestRecordData({
  String? interestname,
}) {
  final firestoreData = serializers.toFirestore(
    InterestRecord.serializer,
    InterestRecord(
      (i) => i..interestname = interestname,
    ),
  );

  return firestoreData;
}
