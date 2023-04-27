// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userspost_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserspostRecord> _$userspostRecordSerializer =
    new _$UserspostRecordSerializer();

class _$UserspostRecordSerializer
    implements StructuredSerializer<UserspostRecord> {
  @override
  final Iterable<Type> types = const [UserspostRecord, _$UserspostRecord];
  @override
  final String wireName = 'UserspostRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserspostRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'location',
      serializers.serialize(object.location,
          specifiedType: const FullType(LocationStruct)),
    ];
    Object? value;
    value = object.content;
    if (value != null) {
      result
        ..add('content')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userref;
    if (value != null) {
      result
        ..add('userref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.timeanddate;
    if (value != null) {
      result
        ..add('timeanddate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.tag;
    if (value != null) {
      result
        ..add('tag')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.smileys;
    if (value != null) {
      result
        ..add('smileys')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.angry;
    if (value != null) {
      result
        ..add('angry')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.reactionbutton;
    if (value != null) {
      result
        ..add('reactionbutton')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.savedby;
    if (value != null) {
      result
        ..add('savedby')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.photos;
    if (value != null) {
      result
        ..add('photos')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.video;
    if (value != null) {
      result
        ..add('video')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hearts;
    if (value != null) {
      result
        ..add('hearts')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.sad;
    if (value != null) {
      result
        ..add('sad')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.postTags;
    if (value != null) {
      result
        ..add('postTags')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.emoji;
    if (value != null) {
      result
        ..add('emoji')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.audio;
    if (value != null) {
      result
        ..add('audio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  UserspostRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserspostRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userref':
          result.userref = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'timeanddate':
          result.timeanddate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'tag':
          result.tag = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'smileys':
          result.smileys.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'angry':
          result.angry.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'reactionbutton':
          result.reactionbutton = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'savedby':
          result.savedby.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'photos':
          result.photos.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'hearts':
          result.hearts.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'sad':
          result.sad.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'location':
          result.location.replace(serializers.deserialize(value,
                  specifiedType: const FullType(LocationStruct))!
              as LocationStruct);
          break;
        case 'postTags':
          result.postTags.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'emoji':
          result.emoji = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'audio':
          result.audio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$UserspostRecord extends UserspostRecord {
  @override
  final String? content;
  @override
  final DocumentReference<Object?>? userref;
  @override
  final DateTime? timeanddate;
  @override
  final String? tag;
  @override
  final BuiltList<DocumentReference<Object?>>? smileys;
  @override
  final BuiltList<DocumentReference<Object?>>? angry;
  @override
  final bool? reactionbutton;
  @override
  final BuiltList<DocumentReference<Object?>>? savedby;
  @override
  final BuiltList<String>? photos;
  @override
  final String? video;
  @override
  final BuiltList<DocumentReference<Object?>>? hearts;
  @override
  final BuiltList<DocumentReference<Object?>>? sad;
  @override
  final LocationStruct location;
  @override
  final BuiltList<String>? postTags;
  @override
  final bool? emoji;
  @override
  final String? audio;
  @override
  final String? type;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UserspostRecord([void Function(UserspostRecordBuilder)? updates]) =>
      (new UserspostRecordBuilder()..update(updates))._build();

  _$UserspostRecord._(
      {this.content,
      this.userref,
      this.timeanddate,
      this.tag,
      this.smileys,
      this.angry,
      this.reactionbutton,
      this.savedby,
      this.photos,
      this.video,
      this.hearts,
      this.sad,
      required this.location,
      this.postTags,
      this.emoji,
      this.audio,
      this.type,
      this.ffRef})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        location, r'UserspostRecord', 'location');
  }

  @override
  UserspostRecord rebuild(void Function(UserspostRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserspostRecordBuilder toBuilder() =>
      new UserspostRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserspostRecord &&
        content == other.content &&
        userref == other.userref &&
        timeanddate == other.timeanddate &&
        tag == other.tag &&
        smileys == other.smileys &&
        angry == other.angry &&
        reactionbutton == other.reactionbutton &&
        savedby == other.savedby &&
        photos == other.photos &&
        video == other.video &&
        hearts == other.hearts &&
        sad == other.sad &&
        location == other.location &&
        postTags == other.postTags &&
        emoji == other.emoji &&
        audio == other.audio &&
        type == other.type &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, userref.hashCode);
    _$hash = $jc(_$hash, timeanddate.hashCode);
    _$hash = $jc(_$hash, tag.hashCode);
    _$hash = $jc(_$hash, smileys.hashCode);
    _$hash = $jc(_$hash, angry.hashCode);
    _$hash = $jc(_$hash, reactionbutton.hashCode);
    _$hash = $jc(_$hash, savedby.hashCode);
    _$hash = $jc(_$hash, photos.hashCode);
    _$hash = $jc(_$hash, video.hashCode);
    _$hash = $jc(_$hash, hearts.hashCode);
    _$hash = $jc(_$hash, sad.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, postTags.hashCode);
    _$hash = $jc(_$hash, emoji.hashCode);
    _$hash = $jc(_$hash, audio.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserspostRecord')
          ..add('content', content)
          ..add('userref', userref)
          ..add('timeanddate', timeanddate)
          ..add('tag', tag)
          ..add('smileys', smileys)
          ..add('angry', angry)
          ..add('reactionbutton', reactionbutton)
          ..add('savedby', savedby)
          ..add('photos', photos)
          ..add('video', video)
          ..add('hearts', hearts)
          ..add('sad', sad)
          ..add('location', location)
          ..add('postTags', postTags)
          ..add('emoji', emoji)
          ..add('audio', audio)
          ..add('type', type)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UserspostRecordBuilder
    implements Builder<UserspostRecord, UserspostRecordBuilder> {
  _$UserspostRecord? _$v;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  DocumentReference<Object?>? _userref;
  DocumentReference<Object?>? get userref => _$this._userref;
  set userref(DocumentReference<Object?>? userref) => _$this._userref = userref;

  DateTime? _timeanddate;
  DateTime? get timeanddate => _$this._timeanddate;
  set timeanddate(DateTime? timeanddate) => _$this._timeanddate = timeanddate;

  String? _tag;
  String? get tag => _$this._tag;
  set tag(String? tag) => _$this._tag = tag;

  ListBuilder<DocumentReference<Object?>>? _smileys;
  ListBuilder<DocumentReference<Object?>> get smileys =>
      _$this._smileys ??= new ListBuilder<DocumentReference<Object?>>();
  set smileys(ListBuilder<DocumentReference<Object?>>? smileys) =>
      _$this._smileys = smileys;

  ListBuilder<DocumentReference<Object?>>? _angry;
  ListBuilder<DocumentReference<Object?>> get angry =>
      _$this._angry ??= new ListBuilder<DocumentReference<Object?>>();
  set angry(ListBuilder<DocumentReference<Object?>>? angry) =>
      _$this._angry = angry;

  bool? _reactionbutton;
  bool? get reactionbutton => _$this._reactionbutton;
  set reactionbutton(bool? reactionbutton) =>
      _$this._reactionbutton = reactionbutton;

  ListBuilder<DocumentReference<Object?>>? _savedby;
  ListBuilder<DocumentReference<Object?>> get savedby =>
      _$this._savedby ??= new ListBuilder<DocumentReference<Object?>>();
  set savedby(ListBuilder<DocumentReference<Object?>>? savedby) =>
      _$this._savedby = savedby;

  ListBuilder<String>? _photos;
  ListBuilder<String> get photos =>
      _$this._photos ??= new ListBuilder<String>();
  set photos(ListBuilder<String>? photos) => _$this._photos = photos;

  String? _video;
  String? get video => _$this._video;
  set video(String? video) => _$this._video = video;

  ListBuilder<DocumentReference<Object?>>? _hearts;
  ListBuilder<DocumentReference<Object?>> get hearts =>
      _$this._hearts ??= new ListBuilder<DocumentReference<Object?>>();
  set hearts(ListBuilder<DocumentReference<Object?>>? hearts) =>
      _$this._hearts = hearts;

  ListBuilder<DocumentReference<Object?>>? _sad;
  ListBuilder<DocumentReference<Object?>> get sad =>
      _$this._sad ??= new ListBuilder<DocumentReference<Object?>>();
  set sad(ListBuilder<DocumentReference<Object?>>? sad) => _$this._sad = sad;

  LocationStructBuilder? _location;
  LocationStructBuilder get location =>
      _$this._location ??= new LocationStructBuilder();
  set location(LocationStructBuilder? location) => _$this._location = location;

  ListBuilder<String>? _postTags;
  ListBuilder<String> get postTags =>
      _$this._postTags ??= new ListBuilder<String>();
  set postTags(ListBuilder<String>? postTags) => _$this._postTags = postTags;

  bool? _emoji;
  bool? get emoji => _$this._emoji;
  set emoji(bool? emoji) => _$this._emoji = emoji;

  String? _audio;
  String? get audio => _$this._audio;
  set audio(String? audio) => _$this._audio = audio;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UserspostRecordBuilder() {
    UserspostRecord._initializeBuilder(this);
  }

  UserspostRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _content = $v.content;
      _userref = $v.userref;
      _timeanddate = $v.timeanddate;
      _tag = $v.tag;
      _smileys = $v.smileys?.toBuilder();
      _angry = $v.angry?.toBuilder();
      _reactionbutton = $v.reactionbutton;
      _savedby = $v.savedby?.toBuilder();
      _photos = $v.photos?.toBuilder();
      _video = $v.video;
      _hearts = $v.hearts?.toBuilder();
      _sad = $v.sad?.toBuilder();
      _location = $v.location.toBuilder();
      _postTags = $v.postTags?.toBuilder();
      _emoji = $v.emoji;
      _audio = $v.audio;
      _type = $v.type;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserspostRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserspostRecord;
  }

  @override
  void update(void Function(UserspostRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserspostRecord build() => _build();

  _$UserspostRecord _build() {
    _$UserspostRecord _$result;
    try {
      _$result = _$v ??
          new _$UserspostRecord._(
              content: content,
              userref: userref,
              timeanddate: timeanddate,
              tag: tag,
              smileys: _smileys?.build(),
              angry: _angry?.build(),
              reactionbutton: reactionbutton,
              savedby: _savedby?.build(),
              photos: _photos?.build(),
              video: video,
              hearts: _hearts?.build(),
              sad: _sad?.build(),
              location: location.build(),
              postTags: _postTags?.build(),
              emoji: emoji,
              audio: audio,
              type: type,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'smileys';
        _smileys?.build();
        _$failedField = 'angry';
        _angry?.build();

        _$failedField = 'savedby';
        _savedby?.build();
        _$failedField = 'photos';
        _photos?.build();

        _$failedField = 'hearts';
        _hearts?.build();
        _$failedField = 'sad';
        _sad?.build();
        _$failedField = 'location';
        location.build();
        _$failedField = 'postTags';
        _postTags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserspostRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
