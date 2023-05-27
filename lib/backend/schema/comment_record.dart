import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommentRecord extends FirestoreRecord {
  CommentRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  bool hasComment() => _comment != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "reply" field.
  String? _reply;
  String get reply => _reply ?? '';
  bool hasReply() => _reply != null;

  // "replytime" field.
  DateTime? _replytime;
  DateTime? get replytime => _replytime;
  bool hasReplytime() => _replytime != null;

  // "userref" field.
  DocumentReference? _userref;
  DocumentReference? get userref => _userref;
  bool hasUserref() => _userref != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _comment = snapshotData['comment'] as String?;
    _time = snapshotData['time'] as DateTime?;
    _reply = snapshotData['reply'] as String?;
    _replytime = snapshotData['replytime'] as DateTime?;
    _userref = snapshotData['userref'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('comment')
          : FirebaseFirestore.instance.collectionGroup('comment');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('comment').doc();

  static Stream<CommentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommentRecord.fromSnapshot(s));

  static Future<CommentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommentRecord.fromSnapshot(s));

  static CommentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommentRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createCommentRecordData({
  String? comment,
  DateTime? time,
  String? reply,
  DateTime? replytime,
  DocumentReference? userref,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'comment': comment,
      'time': time,
      'reply': reply,
      'replytime': replytime,
      'userref': userref,
    }.withoutNulls,
  );

  return firestoreData;
}
