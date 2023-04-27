// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LocationStruct> _$locationStructSerializer =
    new _$LocationStructSerializer();

class _$LocationStructSerializer
    implements StructuredSerializer<LocationStruct> {
  @override
  final Iterable<Type> types = const [LocationStruct, _$LocationStruct];
  @override
  final String wireName = 'LocationStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, LocationStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.latLang;
    if (value != null) {
      result
        ..add('latLang')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.state;
    if (value != null) {
      result
        ..add('state')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.country;
    if (value != null) {
      result
        ..add('country')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.zipcode;
    if (value != null) {
      result
        ..add('Zipcode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  LocationStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'latLang':
          result.latLang = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Zipcode':
          result.zipcode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$LocationStruct extends LocationStruct {
  @override
  final LatLng? latLang;
  @override
  final String? name;
  @override
  final String? address;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? country;
  @override
  final String? zipcode;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$LocationStruct([void Function(LocationStructBuilder)? updates]) =>
      (new LocationStructBuilder()..update(updates))._build();

  _$LocationStruct._(
      {this.latLang,
      this.name,
      this.address,
      this.city,
      this.state,
      this.country,
      this.zipcode,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'LocationStruct', 'firestoreUtilData');
  }

  @override
  LocationStruct rebuild(void Function(LocationStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationStructBuilder toBuilder() =>
      new LocationStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocationStruct &&
        latLang == other.latLang &&
        name == other.name &&
        address == other.address &&
        city == other.city &&
        state == other.state &&
        country == other.country &&
        zipcode == other.zipcode &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, latLang.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, zipcode.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LocationStruct')
          ..add('latLang', latLang)
          ..add('name', name)
          ..add('address', address)
          ..add('city', city)
          ..add('state', state)
          ..add('country', country)
          ..add('zipcode', zipcode)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class LocationStructBuilder
    implements Builder<LocationStruct, LocationStructBuilder> {
  _$LocationStruct? _$v;

  LatLng? _latLang;
  LatLng? get latLang => _$this._latLang;
  set latLang(LatLng? latLang) => _$this._latLang = latLang;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _zipcode;
  String? get zipcode => _$this._zipcode;
  set zipcode(String? zipcode) => _$this._zipcode = zipcode;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  LocationStructBuilder() {
    LocationStruct._initializeBuilder(this);
  }

  LocationStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _latLang = $v.latLang;
      _name = $v.name;
      _address = $v.address;
      _city = $v.city;
      _state = $v.state;
      _country = $v.country;
      _zipcode = $v.zipcode;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocationStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LocationStruct;
  }

  @override
  void update(void Function(LocationStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LocationStruct build() => _build();

  _$LocationStruct _build() {
    final _$result = _$v ??
        new _$LocationStruct._(
            latLang: latLang,
            name: name,
            address: address,
            city: city,
            state: state,
            country: country,
            zipcode: zipcode,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'LocationStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
