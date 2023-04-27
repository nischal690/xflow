// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queries_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<QueriesRecord> _$queriesRecordSerializer =
    new _$QueriesRecordSerializer();

class _$QueriesRecordSerializer implements StructuredSerializer<QueriesRecord> {
  @override
  final Iterable<Type> types = const [QueriesRecord, _$QueriesRecord];
  @override
  final String wireName = 'QueriesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, QueriesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.query;
    if (value != null) {
      result
        ..add('query')
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
  QueriesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new QueriesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'query':
          result.query = serializers.deserialize(value,
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

class _$QueriesRecord extends QueriesRecord {
  @override
  final String? query;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$QueriesRecord([void Function(QueriesRecordBuilder)? updates]) =>
      (new QueriesRecordBuilder()..update(updates))._build();

  _$QueriesRecord._({this.query, this.ffRef}) : super._();

  @override
  QueriesRecord rebuild(void Function(QueriesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QueriesRecordBuilder toBuilder() => new QueriesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QueriesRecord &&
        query == other.query &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, query.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QueriesRecord')
          ..add('query', query)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class QueriesRecordBuilder
    implements Builder<QueriesRecord, QueriesRecordBuilder> {
  _$QueriesRecord? _$v;

  String? _query;
  String? get query => _$this._query;
  set query(String? query) => _$this._query = query;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  QueriesRecordBuilder() {
    QueriesRecord._initializeBuilder(this);
  }

  QueriesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _query = $v.query;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QueriesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QueriesRecord;
  }

  @override
  void update(void Function(QueriesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QueriesRecord build() => _build();

  _$QueriesRecord _build() {
    final _$result = _$v ?? new _$QueriesRecord._(query: query, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
