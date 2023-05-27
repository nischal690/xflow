import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IdverificationRecord extends FirestoreRecord {
  IdverificationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "idissuedcountry" field.
  String? _idissuedcountry;
  String get idissuedcountry => _idissuedcountry ?? '';
  bool hasIdissuedcountry() => _idissuedcountry != null;

  // "idtype" field.
  String? _idtype;
  String get idtype => _idtype ?? '';
  bool hasIdtype() => _idtype != null;

  // "idfront" field.
  String? _idfront;
  String get idfront => _idfront ?? '';
  bool hasIdfront() => _idfront != null;

  // "idback" field.
  String? _idback;
  String get idback => _idback ?? '';
  bool hasIdback() => _idback != null;

  // "idpdf" field.
  String? _idpdf;
  String get idpdf => _idpdf ?? '';
  bool hasIdpdf() => _idpdf != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _idissuedcountry = snapshotData['idissuedcountry'] as String?;
    _idtype = snapshotData['idtype'] as String?;
    _idfront = snapshotData['idfront'] as String?;
    _idback = snapshotData['idback'] as String?;
    _idpdf = snapshotData['idpdf'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('idverification')
          : FirebaseFirestore.instance.collectionGroup('idverification');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('idverification').doc();

  static Stream<IdverificationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => IdverificationRecord.fromSnapshot(s));

  static Future<IdverificationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => IdverificationRecord.fromSnapshot(s));

  static IdverificationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      IdverificationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IdverificationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IdverificationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IdverificationRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createIdverificationRecordData({
  String? idissuedcountry,
  String? idtype,
  String? idfront,
  String? idback,
  String? idpdf,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'idissuedcountry': idissuedcountry,
      'idtype': idtype,
      'idfront': idfront,
      'idback': idback,
      'idpdf': idpdf,
    }.withoutNulls,
  );

  return firestoreData;
}
