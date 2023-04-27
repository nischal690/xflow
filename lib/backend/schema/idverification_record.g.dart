// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'idverification_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IdverificationRecord> _$idverificationRecordSerializer =
    new _$IdverificationRecordSerializer();

class _$IdverificationRecordSerializer
    implements StructuredSerializer<IdverificationRecord> {
  @override
  final Iterable<Type> types = const [
    IdverificationRecord,
    _$IdverificationRecord
  ];
  @override
  final String wireName = 'IdverificationRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, IdverificationRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.idissuedcountry;
    if (value != null) {
      result
        ..add('idissuedcountry')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idtype;
    if (value != null) {
      result
        ..add('idtype')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idfront;
    if (value != null) {
      result
        ..add('idfront')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idback;
    if (value != null) {
      result
        ..add('idback')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idpdf;
    if (value != null) {
      result
        ..add('idpdf')
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
  IdverificationRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IdverificationRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'idissuedcountry':
          result.idissuedcountry = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idtype':
          result.idtype = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idfront':
          result.idfront = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idback':
          result.idback = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idpdf':
          result.idpdf = serializers.deserialize(value,
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

class _$IdverificationRecord extends IdverificationRecord {
  @override
  final String? idissuedcountry;
  @override
  final String? idtype;
  @override
  final String? idfront;
  @override
  final String? idback;
  @override
  final String? idpdf;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$IdverificationRecord(
          [void Function(IdverificationRecordBuilder)? updates]) =>
      (new IdverificationRecordBuilder()..update(updates))._build();

  _$IdverificationRecord._(
      {this.idissuedcountry,
      this.idtype,
      this.idfront,
      this.idback,
      this.idpdf,
      this.ffRef})
      : super._();

  @override
  IdverificationRecord rebuild(
          void Function(IdverificationRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IdverificationRecordBuilder toBuilder() =>
      new IdverificationRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IdverificationRecord &&
        idissuedcountry == other.idissuedcountry &&
        idtype == other.idtype &&
        idfront == other.idfront &&
        idback == other.idback &&
        idpdf == other.idpdf &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, idissuedcountry.hashCode);
    _$hash = $jc(_$hash, idtype.hashCode);
    _$hash = $jc(_$hash, idfront.hashCode);
    _$hash = $jc(_$hash, idback.hashCode);
    _$hash = $jc(_$hash, idpdf.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IdverificationRecord')
          ..add('idissuedcountry', idissuedcountry)
          ..add('idtype', idtype)
          ..add('idfront', idfront)
          ..add('idback', idback)
          ..add('idpdf', idpdf)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class IdverificationRecordBuilder
    implements Builder<IdverificationRecord, IdverificationRecordBuilder> {
  _$IdverificationRecord? _$v;

  String? _idissuedcountry;
  String? get idissuedcountry => _$this._idissuedcountry;
  set idissuedcountry(String? idissuedcountry) =>
      _$this._idissuedcountry = idissuedcountry;

  String? _idtype;
  String? get idtype => _$this._idtype;
  set idtype(String? idtype) => _$this._idtype = idtype;

  String? _idfront;
  String? get idfront => _$this._idfront;
  set idfront(String? idfront) => _$this._idfront = idfront;

  String? _idback;
  String? get idback => _$this._idback;
  set idback(String? idback) => _$this._idback = idback;

  String? _idpdf;
  String? get idpdf => _$this._idpdf;
  set idpdf(String? idpdf) => _$this._idpdf = idpdf;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  IdverificationRecordBuilder() {
    IdverificationRecord._initializeBuilder(this);
  }

  IdverificationRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idissuedcountry = $v.idissuedcountry;
      _idtype = $v.idtype;
      _idfront = $v.idfront;
      _idback = $v.idback;
      _idpdf = $v.idpdf;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IdverificationRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IdverificationRecord;
  }

  @override
  void update(void Function(IdverificationRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IdverificationRecord build() => _build();

  _$IdverificationRecord _build() {
    final _$result = _$v ??
        new _$IdverificationRecord._(
            idissuedcountry: idissuedcountry,
            idtype: idtype,
            idfront: idfront,
            idback: idback,
            idpdf: idpdf,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
