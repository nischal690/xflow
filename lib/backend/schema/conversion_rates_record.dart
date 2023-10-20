import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConversionRatesRecord extends FirestoreRecord {
  ConversionRatesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "USDtoINR" field.
  double? _uSDtoINR;
  double get uSDtoINR => _uSDtoINR ?? 0.0;
  bool hasUSDtoINR() => _uSDtoINR != null;

  // "EURtoINR" field.
  double? _eURtoINR;
  double get eURtoINR => _eURtoINR ?? 0.0;
  bool hasEURtoINR() => _eURtoINR != null;

  void _initializeFields() {
    _uSDtoINR = castToType<double>(snapshotData['USDtoINR']);
    _eURtoINR = castToType<double>(snapshotData['EURtoINR']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('conversionRates');

  static Stream<ConversionRatesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ConversionRatesRecord.fromSnapshot(s));

  static Future<ConversionRatesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ConversionRatesRecord.fromSnapshot(s));

  static ConversionRatesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ConversionRatesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ConversionRatesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ConversionRatesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ConversionRatesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ConversionRatesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createConversionRatesRecordData({
  double? uSDtoINR,
  double? eURtoINR,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'USDtoINR': uSDtoINR,
      'EURtoINR': eURtoINR,
    }.withoutNulls,
  );

  return firestoreData;
}

class ConversionRatesRecordDocumentEquality
    implements Equality<ConversionRatesRecord> {
  const ConversionRatesRecordDocumentEquality();

  @override
  bool equals(ConversionRatesRecord? e1, ConversionRatesRecord? e2) {
    return e1?.uSDtoINR == e2?.uSDtoINR && e1?.eURtoINR == e2?.eURtoINR;
  }

  @override
  int hash(ConversionRatesRecord? e) =>
      const ListEquality().hash([e?.uSDtoINR, e?.eURtoINR]);

  @override
  bool isValidKey(Object? o) => o is ConversionRatesRecord;
}
