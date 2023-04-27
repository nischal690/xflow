import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'queries_record.g.dart';

abstract class QueriesRecord
    implements Built<QueriesRecord, QueriesRecordBuilder> {
  static Serializer<QueriesRecord> get serializer => _$queriesRecordSerializer;

  String? get query;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(QueriesRecordBuilder builder) =>
      builder..query = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('queries')
          : FirebaseFirestore.instance.collectionGroup('queries');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('queries').doc();

  static Stream<QueriesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<QueriesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  QueriesRecord._();
  factory QueriesRecord([void Function(QueriesRecordBuilder) updates]) =
      _$QueriesRecord;

  static QueriesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createQueriesRecordData({
  String? query,
}) {
  final firestoreData = serializers.toFirestore(
    QueriesRecord.serializer,
    QueriesRecord(
      (q) => q..query = query,
    ),
  );

  return firestoreData;
}
