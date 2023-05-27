import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InterestRecord extends FirestoreRecord {
  InterestRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "interestname" field.
  String? _interestname;
  String get interestname => _interestname ?? '';
  bool hasInterestname() => _interestname != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _interestname = snapshotData['interestname'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('interest')
          : FirebaseFirestore.instance.collectionGroup('interest');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('interest').doc();

  static Stream<InterestRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InterestRecord.fromSnapshot(s));

  static Future<InterestRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InterestRecord.fromSnapshot(s));

  static InterestRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InterestRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InterestRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InterestRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InterestRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createInterestRecordData({
  String? interestname,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'interestname': interestname,
    }.withoutNulls,
  );

  return firestoreData;
}
