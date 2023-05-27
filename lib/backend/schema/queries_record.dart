import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QueriesRecord extends FirestoreRecord {
  QueriesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "query" field.
  String? _query;
  String get query => _query ?? '';
  bool hasQuery() => _query != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _query = snapshotData['query'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('queries')
          : FirebaseFirestore.instance.collectionGroup('queries');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('queries').doc();

  static Stream<QueriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QueriesRecord.fromSnapshot(s));

  static Future<QueriesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QueriesRecord.fromSnapshot(s));

  static QueriesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      QueriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QueriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QueriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QueriesRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createQueriesRecordData({
  String? query,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'query': query,
    }.withoutNulls,
  );

  return firestoreData;
}
