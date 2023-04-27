import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'comment_record.g.dart';

abstract class CommentRecord
    implements Built<CommentRecord, CommentRecordBuilder> {
  static Serializer<CommentRecord> get serializer => _$commentRecordSerializer;

  String? get comment;

  DateTime? get time;

  String? get reply;

  DateTime? get replytime;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(CommentRecordBuilder builder) => builder
    ..comment = ''
    ..reply = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('comment')
          : FirebaseFirestore.instance.collectionGroup('comment');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('comment').doc();

  static Stream<CommentRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CommentRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CommentRecord._();
  factory CommentRecord([void Function(CommentRecordBuilder) updates]) =
      _$CommentRecord;

  static CommentRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCommentRecordData({
  String? comment,
  DateTime? time,
  String? reply,
  DateTime? replytime,
}) {
  final firestoreData = serializers.toFirestore(
    CommentRecord.serializer,
    CommentRecord(
      (c) => c
        ..comment = comment
        ..time = time
        ..reply = reply
        ..replytime = replytime,
    ),
  );

  return firestoreData;
}
