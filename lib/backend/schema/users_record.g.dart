// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'residentialLocation',
      serializers.serialize(object.residentialLocation,
          specifiedType: const FullType(LocationStruct)),
      'currentLocation',
      serializers.serialize(object.currentLocation,
          specifiedType: const FullType(LocationStruct)),
    ];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.logincount;
    if (value != null) {
      result
        ..add('logincount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
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
    value = object.currencytype;
    if (value != null) {
      result
        ..add('Currencytype')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.amountInWallet;
    if (value != null) {
      result
        ..add('amount_in_wallet')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.latlang;
    if (value != null) {
      result
        ..add('latlang')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.currenciessymbol;
    if (value != null) {
      result
        ..add('currenciessymbol')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dob;
    if (value != null) {
      result
        ..add('DOB')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.posttags;
    if (value != null) {
      result
        ..add('posttags')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.followers;
    if (value != null) {
      result
        ..add('followers')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.followings;
    if (value != null) {
      result
        ..add('followings')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.guide;
    if (value != null) {
      result
        ..add('guide')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.chargefor;
    if (value != null) {
      result
        ..add('chargefor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.chargeamount;
    if (value != null) {
      result
        ..add('chargeamount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.guideCities;
    if (value != null) {
      result
        ..add('guideCities')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.beento;
    if (value != null) {
      result
        ..add('beento')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  UsersRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'logincount':
          result.logincount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Currencytype':
          result.currencytype = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'amount_in_wallet':
          result.amountInWallet = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'latlang':
          result.latlang = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'currenciessymbol':
          result.currenciessymbol = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'DOB':
          result.dob = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'residentialLocation':
          result.residentialLocation.replace(serializers.deserialize(value,
                  specifiedType: const FullType(LocationStruct))!
              as LocationStruct);
          break;
        case 'posttags':
          result.posttags.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'followers':
          result.followers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'followings':
          result.followings.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'currentLocation':
          result.currentLocation.replace(serializers.deserialize(value,
                  specifiedType: const FullType(LocationStruct))!
              as LocationStruct);
          break;
        case 'guide':
          result.guide = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'chargefor':
          result.chargefor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'chargeamount':
          result.chargeamount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'guideCities':
          result.guideCities.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'beento':
          result.beento.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
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

class _$UsersRecord extends UsersRecord {
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final int? logincount;
  @override
  final String? uid;
  @override
  final String? country;
  @override
  final String? currencytype;
  @override
  final int? amountInWallet;
  @override
  final LatLng? latlang;
  @override
  final String? currenciessymbol;
  @override
  final String? title;
  @override
  final DateTime? dob;
  @override
  final LocationStruct residentialLocation;
  @override
  final BuiltList<String>? posttags;
  @override
  final BuiltList<DocumentReference<Object?>>? followers;
  @override
  final BuiltList<DocumentReference<Object?>>? followings;
  @override
  final LocationStruct currentLocation;
  @override
  final bool? guide;
  @override
  final String? chargefor;
  @override
  final double? chargeamount;
  @override
  final BuiltList<String>? guideCities;
  @override
  final String? type;
  @override
  final BuiltList<String>? beento;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsersRecord([void Function(UsersRecordBuilder)? updates]) =>
      (new UsersRecordBuilder()..update(updates))._build();

  _$UsersRecord._(
      {this.email,
      this.displayName,
      this.photoUrl,
      this.createdTime,
      this.phoneNumber,
      this.logincount,
      this.uid,
      this.country,
      this.currencytype,
      this.amountInWallet,
      this.latlang,
      this.currenciessymbol,
      this.title,
      this.dob,
      required this.residentialLocation,
      this.posttags,
      this.followers,
      this.followings,
      required this.currentLocation,
      this.guide,
      this.chargefor,
      this.chargeamount,
      this.guideCities,
      this.type,
      this.beento,
      this.ffRef})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        residentialLocation, r'UsersRecord', 'residentialLocation');
    BuiltValueNullFieldError.checkNotNull(
        currentLocation, r'UsersRecord', 'currentLocation');
  }

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        logincount == other.logincount &&
        uid == other.uid &&
        country == other.country &&
        currencytype == other.currencytype &&
        amountInWallet == other.amountInWallet &&
        latlang == other.latlang &&
        currenciessymbol == other.currenciessymbol &&
        title == other.title &&
        dob == other.dob &&
        residentialLocation == other.residentialLocation &&
        posttags == other.posttags &&
        followers == other.followers &&
        followings == other.followings &&
        currentLocation == other.currentLocation &&
        guide == other.guide &&
        chargefor == other.chargefor &&
        chargeamount == other.chargeamount &&
        guideCities == other.guideCities &&
        type == other.type &&
        beento == other.beento &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, photoUrl.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, logincount.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, currencytype.hashCode);
    _$hash = $jc(_$hash, amountInWallet.hashCode);
    _$hash = $jc(_$hash, latlang.hashCode);
    _$hash = $jc(_$hash, currenciessymbol.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, dob.hashCode);
    _$hash = $jc(_$hash, residentialLocation.hashCode);
    _$hash = $jc(_$hash, posttags.hashCode);
    _$hash = $jc(_$hash, followers.hashCode);
    _$hash = $jc(_$hash, followings.hashCode);
    _$hash = $jc(_$hash, currentLocation.hashCode);
    _$hash = $jc(_$hash, guide.hashCode);
    _$hash = $jc(_$hash, chargefor.hashCode);
    _$hash = $jc(_$hash, chargeamount.hashCode);
    _$hash = $jc(_$hash, guideCities.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, beento.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('logincount', logincount)
          ..add('uid', uid)
          ..add('country', country)
          ..add('currencytype', currencytype)
          ..add('amountInWallet', amountInWallet)
          ..add('latlang', latlang)
          ..add('currenciessymbol', currenciessymbol)
          ..add('title', title)
          ..add('dob', dob)
          ..add('residentialLocation', residentialLocation)
          ..add('posttags', posttags)
          ..add('followers', followers)
          ..add('followings', followings)
          ..add('currentLocation', currentLocation)
          ..add('guide', guide)
          ..add('chargefor', chargefor)
          ..add('chargeamount', chargeamount)
          ..add('guideCities', guideCities)
          ..add('type', type)
          ..add('beento', beento)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  int? _logincount;
  int? get logincount => _$this._logincount;
  set logincount(int? logincount) => _$this._logincount = logincount;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _currencytype;
  String? get currencytype => _$this._currencytype;
  set currencytype(String? currencytype) => _$this._currencytype = currencytype;

  int? _amountInWallet;
  int? get amountInWallet => _$this._amountInWallet;
  set amountInWallet(int? amountInWallet) =>
      _$this._amountInWallet = amountInWallet;

  LatLng? _latlang;
  LatLng? get latlang => _$this._latlang;
  set latlang(LatLng? latlang) => _$this._latlang = latlang;

  String? _currenciessymbol;
  String? get currenciessymbol => _$this._currenciessymbol;
  set currenciessymbol(String? currenciessymbol) =>
      _$this._currenciessymbol = currenciessymbol;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  DateTime? _dob;
  DateTime? get dob => _$this._dob;
  set dob(DateTime? dob) => _$this._dob = dob;

  LocationStructBuilder? _residentialLocation;
  LocationStructBuilder get residentialLocation =>
      _$this._residentialLocation ??= new LocationStructBuilder();
  set residentialLocation(LocationStructBuilder? residentialLocation) =>
      _$this._residentialLocation = residentialLocation;

  ListBuilder<String>? _posttags;
  ListBuilder<String> get posttags =>
      _$this._posttags ??= new ListBuilder<String>();
  set posttags(ListBuilder<String>? posttags) => _$this._posttags = posttags;

  ListBuilder<DocumentReference<Object?>>? _followers;
  ListBuilder<DocumentReference<Object?>> get followers =>
      _$this._followers ??= new ListBuilder<DocumentReference<Object?>>();
  set followers(ListBuilder<DocumentReference<Object?>>? followers) =>
      _$this._followers = followers;

  ListBuilder<DocumentReference<Object?>>? _followings;
  ListBuilder<DocumentReference<Object?>> get followings =>
      _$this._followings ??= new ListBuilder<DocumentReference<Object?>>();
  set followings(ListBuilder<DocumentReference<Object?>>? followings) =>
      _$this._followings = followings;

  LocationStructBuilder? _currentLocation;
  LocationStructBuilder get currentLocation =>
      _$this._currentLocation ??= new LocationStructBuilder();
  set currentLocation(LocationStructBuilder? currentLocation) =>
      _$this._currentLocation = currentLocation;

  bool? _guide;
  bool? get guide => _$this._guide;
  set guide(bool? guide) => _$this._guide = guide;

  String? _chargefor;
  String? get chargefor => _$this._chargefor;
  set chargefor(String? chargefor) => _$this._chargefor = chargefor;

  double? _chargeamount;
  double? get chargeamount => _$this._chargeamount;
  set chargeamount(double? chargeamount) => _$this._chargeamount = chargeamount;

  ListBuilder<String>? _guideCities;
  ListBuilder<String> get guideCities =>
      _$this._guideCities ??= new ListBuilder<String>();
  set guideCities(ListBuilder<String>? guideCities) =>
      _$this._guideCities = guideCities;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  ListBuilder<String>? _beento;
  ListBuilder<String> get beento =>
      _$this._beento ??= new ListBuilder<String>();
  set beento(ListBuilder<String>? beento) => _$this._beento = beento;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _logincount = $v.logincount;
      _uid = $v.uid;
      _country = $v.country;
      _currencytype = $v.currencytype;
      _amountInWallet = $v.amountInWallet;
      _latlang = $v.latlang;
      _currenciessymbol = $v.currenciessymbol;
      _title = $v.title;
      _dob = $v.dob;
      _residentialLocation = $v.residentialLocation.toBuilder();
      _posttags = $v.posttags?.toBuilder();
      _followers = $v.followers?.toBuilder();
      _followings = $v.followings?.toBuilder();
      _currentLocation = $v.currentLocation.toBuilder();
      _guide = $v.guide;
      _chargefor = $v.chargefor;
      _chargeamount = $v.chargeamount;
      _guideCities = $v.guideCities?.toBuilder();
      _type = $v.type;
      _beento = $v.beento?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersRecord build() => _build();

  _$UsersRecord _build() {
    _$UsersRecord _$result;
    try {
      _$result = _$v ??
          new _$UsersRecord._(
              email: email,
              displayName: displayName,
              photoUrl: photoUrl,
              createdTime: createdTime,
              phoneNumber: phoneNumber,
              logincount: logincount,
              uid: uid,
              country: country,
              currencytype: currencytype,
              amountInWallet: amountInWallet,
              latlang: latlang,
              currenciessymbol: currenciessymbol,
              title: title,
              dob: dob,
              residentialLocation: residentialLocation.build(),
              posttags: _posttags?.build(),
              followers: _followers?.build(),
              followings: _followings?.build(),
              currentLocation: currentLocation.build(),
              guide: guide,
              chargefor: chargefor,
              chargeamount: chargeamount,
              guideCities: _guideCities?.build(),
              type: type,
              beento: _beento?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'residentialLocation';
        residentialLocation.build();
        _$failedField = 'posttags';
        _posttags?.build();
        _$failedField = 'followers';
        _followers?.build();
        _$failedField = 'followings';
        _followings?.build();
        _$failedField = 'currentLocation';
        currentLocation.build();

        _$failedField = 'guideCities';
        _guideCities?.build();

        _$failedField = 'beento';
        _beento?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UsersRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
