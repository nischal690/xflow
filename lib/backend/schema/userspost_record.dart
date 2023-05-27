import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserspostRecord extends FirestoreRecord {
  UserspostRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "userref" field.
  DocumentReference? _userref;
  DocumentReference? get userref => _userref;
  bool hasUserref() => _userref != null;

  // "timeanddate" field.
  DateTime? _timeanddate;
  DateTime? get timeanddate => _timeanddate;
  bool hasTimeanddate() => _timeanddate != null;

  // "tag" field.
  String? _tag;
  String get tag => _tag ?? '';
  bool hasTag() => _tag != null;

  // "smileys" field.
  List<DocumentReference>? _smileys;
  List<DocumentReference> get smileys => _smileys ?? const [];
  bool hasSmileys() => _smileys != null;

  // "angry" field.
  List<DocumentReference>? _angry;
  List<DocumentReference> get angry => _angry ?? const [];
  bool hasAngry() => _angry != null;

  // "reactionbutton" field.
  bool? _reactionbutton;
  bool get reactionbutton => _reactionbutton ?? false;
  bool hasReactionbutton() => _reactionbutton != null;

  // "savedby" field.
  List<DocumentReference>? _savedby;
  List<DocumentReference> get savedby => _savedby ?? const [];
  bool hasSavedby() => _savedby != null;

  // "photos" field.
  List<String>? _photos;
  List<String> get photos => _photos ?? const [];
  bool hasPhotos() => _photos != null;

  // "video" field.
  String? _video;
  String get video => _video ?? '';
  bool hasVideo() => _video != null;

  // "hearts" field.
  List<DocumentReference>? _hearts;
  List<DocumentReference> get hearts => _hearts ?? const [];
  bool hasHearts() => _hearts != null;

  // "sad" field.
  List<DocumentReference>? _sad;
  List<DocumentReference> get sad => _sad ?? const [];
  bool hasSad() => _sad != null;

  // "location" field.
  LocationStruct? _location;
  LocationStruct get location => _location ?? LocationStruct();
  bool hasLocation() => _location != null;

  // "postTags" field.
  List<String>? _postTags;
  List<String> get postTags => _postTags ?? const [];
  bool hasPostTags() => _postTags != null;

  // "emoji" field.
  bool? _emoji;
  bool get emoji => _emoji ?? false;
  bool hasEmoji() => _emoji != null;

  // "audio" field.
  String? _audio;
  String get audio => _audio ?? '';
  bool hasAudio() => _audio != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  void _initializeFields() {
    _content = snapshotData['content'] as String?;
    _userref = snapshotData['userref'] as DocumentReference?;
    _timeanddate = snapshotData['timeanddate'] as DateTime?;
    _tag = snapshotData['tag'] as String?;
    _smileys = getDataList(snapshotData['smileys']);
    _angry = getDataList(snapshotData['angry']);
    _reactionbutton = snapshotData['reactionbutton'] as bool?;
    _savedby = getDataList(snapshotData['savedby']);
    _photos = getDataList(snapshotData['photos']);
    _video = snapshotData['video'] as String?;
    _hearts = getDataList(snapshotData['hearts']);
    _sad = getDataList(snapshotData['sad']);
    _location = LocationStruct.maybeFromMap(snapshotData['location']);
    _postTags = getDataList(snapshotData['postTags']);
    _emoji = snapshotData['emoji'] as bool?;
    _audio = snapshotData['audio'] as String?;
    _type = snapshotData['type'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userspost');

  static Stream<UserspostRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserspostRecord.fromSnapshot(s));

  static Future<UserspostRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserspostRecord.fromSnapshot(s));

  static UserspostRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserspostRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserspostRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserspostRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserspostRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createUserspostRecordData({
  String? content,
  DocumentReference? userref,
  DateTime? timeanddate,
  String? tag,
  bool? reactionbutton,
  String? video,
  LocationStruct? location,
  bool? emoji,
  String? audio,
  String? type,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'content': content,
      'userref': userref,
      'timeanddate': timeanddate,
      'tag': tag,
      'reactionbutton': reactionbutton,
      'video': video,
      'location': LocationStruct().toMap(),
      'emoji': emoji,
      'audio': audio,
      'type': type,
    }.withoutNulls,
  );

  // Handle nested data for "location" field.
  addLocationStructData(firestoreData, location, 'location');

  return firestoreData;
}
