// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommentRecord> _$commentRecordSerializer =
    new _$CommentRecordSerializer();

class _$CommentRecordSerializer implements StructuredSerializer<CommentRecord> {
  @override
  final Iterable<Type> types = const [CommentRecord, _$CommentRecord];
  @override
  final String wireName = 'CommentRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CommentRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.reply;
    if (value != null) {
      result
        ..add('reply')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.replytime;
    if (value != null) {
      result
        ..add('replytime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  CommentRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommentRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'reply':
          result.reply = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'replytime':
          result.replytime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$CommentRecord extends CommentRecord {
  @override
  final String? comment;
  @override
  final DateTime? time;
  @override
  final String? reply;
  @override
  final DateTime? replytime;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CommentRecord([void Function(CommentRecordBuilder)? updates]) =>
      (new CommentRecordBuilder()..update(updates))._build();

  _$CommentRecord._(
      {this.comment, this.time, this.reply, this.replytime, this.ffRef})
      : super._();

  @override
  CommentRecord rebuild(void Function(CommentRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentRecordBuilder toBuilder() => new CommentRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommentRecord &&
        comment == other.comment &&
        time == other.time &&
        reply == other.reply &&
        replytime == other.replytime &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, reply.hashCode);
    _$hash = $jc(_$hash, replytime.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CommentRecord')
          ..add('comment', comment)
          ..add('time', time)
          ..add('reply', reply)
          ..add('replytime', replytime)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CommentRecordBuilder
    implements Builder<CommentRecord, CommentRecordBuilder> {
  _$CommentRecord? _$v;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  String? _reply;
  String? get reply => _$this._reply;
  set reply(String? reply) => _$this._reply = reply;

  DateTime? _replytime;
  DateTime? get replytime => _$this._replytime;
  set replytime(DateTime? replytime) => _$this._replytime = replytime;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CommentRecordBuilder() {
    CommentRecord._initializeBuilder(this);
  }

  CommentRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _comment = $v.comment;
      _time = $v.time;
      _reply = $v.reply;
      _replytime = $v.replytime;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommentRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommentRecord;
  }

  @override
  void update(void Function(CommentRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommentRecord build() => _build();

  _$CommentRecord _build() {
    final _$result = _$v ??
        new _$CommentRecord._(
            comment: comment,
            time: time,
            reply: reply,
            replytime: replytime,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
