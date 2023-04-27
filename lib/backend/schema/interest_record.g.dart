// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interest_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InterestRecord> _$interestRecordSerializer =
    new _$InterestRecordSerializer();

class _$InterestRecordSerializer
    implements StructuredSerializer<InterestRecord> {
  @override
  final Iterable<Type> types = const [InterestRecord, _$InterestRecord];
  @override
  final String wireName = 'InterestRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, InterestRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.interestname;
    if (value != null) {
      result
        ..add('interestname')
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
  InterestRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InterestRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'interestname':
          result.interestname = serializers.deserialize(value,
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

class _$InterestRecord extends InterestRecord {
  @override
  final String? interestname;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$InterestRecord([void Function(InterestRecordBuilder)? updates]) =>
      (new InterestRecordBuilder()..update(updates))._build();

  _$InterestRecord._({this.interestname, this.ffRef}) : super._();

  @override
  InterestRecord rebuild(void Function(InterestRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InterestRecordBuilder toBuilder() =>
      new InterestRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InterestRecord &&
        interestname == other.interestname &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, interestname.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InterestRecord')
          ..add('interestname', interestname)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class InterestRecordBuilder
    implements Builder<InterestRecord, InterestRecordBuilder> {
  _$InterestRecord? _$v;

  String? _interestname;
  String? get interestname => _$this._interestname;
  set interestname(String? interestname) => _$this._interestname = interestname;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  InterestRecordBuilder() {
    InterestRecord._initializeBuilder(this);
  }

  InterestRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _interestname = $v.interestname;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InterestRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InterestRecord;
  }

  @override
  void update(void Function(InterestRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InterestRecord build() => _build();

  _$InterestRecord _build() {
    final _$result =
        _$v ?? new _$InterestRecord._(interestname: interestname, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
