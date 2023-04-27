// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_history_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TransactionHistoryRecord> _$transactionHistoryRecordSerializer =
    new _$TransactionHistoryRecordSerializer();

class _$TransactionHistoryRecordSerializer
    implements StructuredSerializer<TransactionHistoryRecord> {
  @override
  final Iterable<Type> types = const [
    TransactionHistoryRecord,
    _$TransactionHistoryRecord
  ];
  @override
  final String wireName = 'TransactionHistoryRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, TransactionHistoryRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.sentTo;
    if (value != null) {
      result
        ..add('SentTo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.currency;
    if (value != null) {
      result
        ..add('Currency')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.amount;
    if (value != null) {
      result
        ..add('Amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.amountinINR;
    if (value != null) {
      result
        ..add('AmountinINR')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.by;
    if (value != null) {
      result
        ..add('By')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.transactiontime;
    if (value != null) {
      result
        ..add('Transactiontime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.sentToID;
    if (value != null) {
      result
        ..add('SentToID')
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
  TransactionHistoryRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TransactionHistoryRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'SentTo':
          result.sentTo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Currency':
          result.currency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'AmountinINR':
          result.amountinINR = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'By':
          result.by = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Transactiontime':
          result.transactiontime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'SentToID':
          result.sentToID = serializers.deserialize(value,
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

class _$TransactionHistoryRecord extends TransactionHistoryRecord {
  @override
  final String? sentTo;
  @override
  final String? currency;
  @override
  final String? amount;
  @override
  final int? amountinINR;
  @override
  final DocumentReference<Object?>? by;
  @override
  final DateTime? transactiontime;
  @override
  final String? sentToID;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TransactionHistoryRecord(
          [void Function(TransactionHistoryRecordBuilder)? updates]) =>
      (new TransactionHistoryRecordBuilder()..update(updates))._build();

  _$TransactionHistoryRecord._(
      {this.sentTo,
      this.currency,
      this.amount,
      this.amountinINR,
      this.by,
      this.transactiontime,
      this.sentToID,
      this.ffRef})
      : super._();

  @override
  TransactionHistoryRecord rebuild(
          void Function(TransactionHistoryRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionHistoryRecordBuilder toBuilder() =>
      new TransactionHistoryRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionHistoryRecord &&
        sentTo == other.sentTo &&
        currency == other.currency &&
        amount == other.amount &&
        amountinINR == other.amountinINR &&
        by == other.by &&
        transactiontime == other.transactiontime &&
        sentToID == other.sentToID &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sentTo.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, amountinINR.hashCode);
    _$hash = $jc(_$hash, by.hashCode);
    _$hash = $jc(_$hash, transactiontime.hashCode);
    _$hash = $jc(_$hash, sentToID.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TransactionHistoryRecord')
          ..add('sentTo', sentTo)
          ..add('currency', currency)
          ..add('amount', amount)
          ..add('amountinINR', amountinINR)
          ..add('by', by)
          ..add('transactiontime', transactiontime)
          ..add('sentToID', sentToID)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TransactionHistoryRecordBuilder
    implements
        Builder<TransactionHistoryRecord, TransactionHistoryRecordBuilder> {
  _$TransactionHistoryRecord? _$v;

  String? _sentTo;
  String? get sentTo => _$this._sentTo;
  set sentTo(String? sentTo) => _$this._sentTo = sentTo;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _amount;
  String? get amount => _$this._amount;
  set amount(String? amount) => _$this._amount = amount;

  int? _amountinINR;
  int? get amountinINR => _$this._amountinINR;
  set amountinINR(int? amountinINR) => _$this._amountinINR = amountinINR;

  DocumentReference<Object?>? _by;
  DocumentReference<Object?>? get by => _$this._by;
  set by(DocumentReference<Object?>? by) => _$this._by = by;

  DateTime? _transactiontime;
  DateTime? get transactiontime => _$this._transactiontime;
  set transactiontime(DateTime? transactiontime) =>
      _$this._transactiontime = transactiontime;

  String? _sentToID;
  String? get sentToID => _$this._sentToID;
  set sentToID(String? sentToID) => _$this._sentToID = sentToID;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TransactionHistoryRecordBuilder() {
    TransactionHistoryRecord._initializeBuilder(this);
  }

  TransactionHistoryRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sentTo = $v.sentTo;
      _currency = $v.currency;
      _amount = $v.amount;
      _amountinINR = $v.amountinINR;
      _by = $v.by;
      _transactiontime = $v.transactiontime;
      _sentToID = $v.sentToID;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionHistoryRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionHistoryRecord;
  }

  @override
  void update(void Function(TransactionHistoryRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransactionHistoryRecord build() => _build();

  _$TransactionHistoryRecord _build() {
    final _$result = _$v ??
        new _$TransactionHistoryRecord._(
            sentTo: sentTo,
            currency: currency,
            amount: amount,
            amountinINR: amountinINR,
            by: by,
            transactiontime: transactiontime,
            sentToID: sentToID,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
