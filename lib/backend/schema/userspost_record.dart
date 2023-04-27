import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'userspost_record.g.dart';

abstract class UserspostRecord
    implements Built<UserspostRecord, UserspostRecordBuilder> {
  static Serializer<UserspostRecord> get serializer =>
      _$userspostRecordSerializer;

  String? get content;

  DocumentReference? get userref;

  DateTime? get timeanddate;

  String? get tag;

  BuiltList<DocumentReference>? get smileys;

  BuiltList<DocumentReference>? get angry;

  bool? get reactionbutton;

  BuiltList<DocumentReference>? get savedby;

  BuiltList<String>? get photos;

  String? get video;

  BuiltList<DocumentReference>? get hearts;

  BuiltList<DocumentReference>? get sad;

  LocationStruct get location;

  BuiltList<String>? get postTags;

  bool? get emoji;

  String? get audio;

  String? get type;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UserspostRecordBuilder builder) => builder
    ..content = ''
    ..tag = ''
    ..smileys = ListBuilder()
    ..angry = ListBuilder()
    ..reactionbutton = false
    ..savedby = ListBuilder()
    ..photos = ListBuilder()
    ..video = ''
    ..hearts = ListBuilder()
    ..sad = ListBuilder()
    ..location = LocationStructBuilder()
    ..postTags = ListBuilder()
    ..emoji = false
    ..audio = ''
    ..type = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userspost');

  static Stream<UserspostRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UserspostRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UserspostRecord._();
  factory UserspostRecord([void Function(UserspostRecordBuilder) updates]) =
      _$UserspostRecord;

  static UserspostRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
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
  final firestoreData = serializers.toFirestore(
    UserspostRecord.serializer,
    UserspostRecord(
      (u) => u
        ..content = content
        ..userref = userref
        ..timeanddate = timeanddate
        ..tag = tag
        ..smileys = null
        ..angry = null
        ..reactionbutton = reactionbutton
        ..savedby = null
        ..photos = null
        ..video = video
        ..hearts = null
        ..sad = null
        ..location = LocationStructBuilder()
        ..postTags = null
        ..emoji = emoji
        ..audio = audio
        ..type = type,
    ),
  );

  // Handle nested data for "location" field.
  addLocationStructData(firestoreData, location, 'location');

  return firestoreData;
}
