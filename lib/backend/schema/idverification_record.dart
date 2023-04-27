import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'idverification_record.g.dart';

abstract class IdverificationRecord
    implements Built<IdverificationRecord, IdverificationRecordBuilder> {
  static Serializer<IdverificationRecord> get serializer =>
      _$idverificationRecordSerializer;

  String? get idissuedcountry;

  String? get idtype;

  String? get idfront;

  String? get idback;

  String? get idpdf;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(IdverificationRecordBuilder builder) => builder
    ..idissuedcountry = ''
    ..idtype = ''
    ..idfront = ''
    ..idback = ''
    ..idpdf = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('idverification')
          : FirebaseFirestore.instance.collectionGroup('idverification');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('idverification').doc();

  static Stream<IdverificationRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<IdverificationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  IdverificationRecord._();
  factory IdverificationRecord(
          [void Function(IdverificationRecordBuilder) updates]) =
      _$IdverificationRecord;

  static IdverificationRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createIdverificationRecordData({
  String? idissuedcountry,
  String? idtype,
  String? idfront,
  String? idback,
  String? idpdf,
}) {
  final firestoreData = serializers.toFirestore(
    IdverificationRecord.serializer,
    IdverificationRecord(
      (i) => i
        ..idissuedcountry = idissuedcountry
        ..idtype = idtype
        ..idfront = idfront
        ..idback = idback
        ..idpdf = idpdf,
    ),
  );

  return firestoreData;
}
