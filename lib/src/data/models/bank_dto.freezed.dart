// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BankDto _$BankDtoFromJson(Map<String, dynamic> json) {
  return _BankDto.fromJson(json);
}

/// @nodoc
mixin _$BankDto {
  String? get idx => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  ///
  @JsonKey(name: 'short_name')
  String? get shortName => throw _privateConstructorUsedError;
  @JsonKey(name: 'swift_code')
  String? get swiftCode => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_cardpayment')
  bool? get hasCardPayment => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'ebanking_url')
  String? get eBankingUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_ebanking')
  bool? get hasEBanking => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_mobile_checkout')
  bool? get hasMobileCheckout => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_direct_withdraw')
  bool? get hasDirectWithdraw => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_nchl')
  bool? get hasNchl => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_mobile_banking')
  bool? get hasMobileBanking => throw _privateConstructorUsedError;
  @JsonKey(name: 'play_store')
  String? get playStoreLink => throw _privateConstructorUsedError;
  @JsonKey(name: 'app_store')
  String? get appStoreLink => throw _privateConstructorUsedError;
  List<String>? get branches => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankDtoCopyWith<BankDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankDtoCopyWith<$Res> {
  factory $BankDtoCopyWith(BankDto value, $Res Function(BankDto) then) =
      _$BankDtoCopyWithImpl<$Res, BankDto>;
  @useResult
  $Res call(
      {String? idx,
      String? name,
      @JsonKey(name: 'short_name') String? shortName,
      @JsonKey(name: 'swift_code') String? swiftCode,
      String? logo,
      @JsonKey(name: 'has_cardpayment') bool? hasCardPayment,
      String? address,
      @JsonKey(name: 'ebanking_url') String? eBankingUrl,
      @JsonKey(name: 'has_ebanking') bool? hasEBanking,
      @JsonKey(name: 'has_mobile_checkout') bool? hasMobileCheckout,
      @JsonKey(name: 'has_direct_withdraw') bool? hasDirectWithdraw,
      @JsonKey(name: 'has_nchl') bool? hasNchl,
      @JsonKey(name: 'has_mobile_banking') bool? hasMobileBanking,
      @JsonKey(name: 'play_store') String? playStoreLink,
      @JsonKey(name: 'app_store') String? appStoreLink,
      List<String>? branches});
}

/// @nodoc
class _$BankDtoCopyWithImpl<$Res, $Val extends BankDto>
    implements $BankDtoCopyWith<$Res> {
  _$BankDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = freezed,
    Object? name = freezed,
    Object? shortName = freezed,
    Object? swiftCode = freezed,
    Object? logo = freezed,
    Object? hasCardPayment = freezed,
    Object? address = freezed,
    Object? eBankingUrl = freezed,
    Object? hasEBanking = freezed,
    Object? hasMobileCheckout = freezed,
    Object? hasDirectWithdraw = freezed,
    Object? hasNchl = freezed,
    Object? hasMobileBanking = freezed,
    Object? playStoreLink = freezed,
    Object? appStoreLink = freezed,
    Object? branches = freezed,
  }) {
    return _then(_value.copyWith(
      idx: freezed == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      shortName: freezed == shortName
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String?,
      swiftCode: freezed == swiftCode
          ? _value.swiftCode
          : swiftCode // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      hasCardPayment: freezed == hasCardPayment
          ? _value.hasCardPayment
          : hasCardPayment // ignore: cast_nullable_to_non_nullable
              as bool?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      eBankingUrl: freezed == eBankingUrl
          ? _value.eBankingUrl
          : eBankingUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      hasEBanking: freezed == hasEBanking
          ? _value.hasEBanking
          : hasEBanking // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasMobileCheckout: freezed == hasMobileCheckout
          ? _value.hasMobileCheckout
          : hasMobileCheckout // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasDirectWithdraw: freezed == hasDirectWithdraw
          ? _value.hasDirectWithdraw
          : hasDirectWithdraw // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasNchl: freezed == hasNchl
          ? _value.hasNchl
          : hasNchl // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasMobileBanking: freezed == hasMobileBanking
          ? _value.hasMobileBanking
          : hasMobileBanking // ignore: cast_nullable_to_non_nullable
              as bool?,
      playStoreLink: freezed == playStoreLink
          ? _value.playStoreLink
          : playStoreLink // ignore: cast_nullable_to_non_nullable
              as String?,
      appStoreLink: freezed == appStoreLink
          ? _value.appStoreLink
          : appStoreLink // ignore: cast_nullable_to_non_nullable
              as String?,
      branches: freezed == branches
          ? _value.branches
          : branches // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BankDtoCopyWith<$Res> implements $BankDtoCopyWith<$Res> {
  factory _$$_BankDtoCopyWith(
          _$_BankDto value, $Res Function(_$_BankDto) then) =
      __$$_BankDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? idx,
      String? name,
      @JsonKey(name: 'short_name') String? shortName,
      @JsonKey(name: 'swift_code') String? swiftCode,
      String? logo,
      @JsonKey(name: 'has_cardpayment') bool? hasCardPayment,
      String? address,
      @JsonKey(name: 'ebanking_url') String? eBankingUrl,
      @JsonKey(name: 'has_ebanking') bool? hasEBanking,
      @JsonKey(name: 'has_mobile_checkout') bool? hasMobileCheckout,
      @JsonKey(name: 'has_direct_withdraw') bool? hasDirectWithdraw,
      @JsonKey(name: 'has_nchl') bool? hasNchl,
      @JsonKey(name: 'has_mobile_banking') bool? hasMobileBanking,
      @JsonKey(name: 'play_store') String? playStoreLink,
      @JsonKey(name: 'app_store') String? appStoreLink,
      List<String>? branches});
}

/// @nodoc
class __$$_BankDtoCopyWithImpl<$Res>
    extends _$BankDtoCopyWithImpl<$Res, _$_BankDto>
    implements _$$_BankDtoCopyWith<$Res> {
  __$$_BankDtoCopyWithImpl(_$_BankDto _value, $Res Function(_$_BankDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = freezed,
    Object? name = freezed,
    Object? shortName = freezed,
    Object? swiftCode = freezed,
    Object? logo = freezed,
    Object? hasCardPayment = freezed,
    Object? address = freezed,
    Object? eBankingUrl = freezed,
    Object? hasEBanking = freezed,
    Object? hasMobileCheckout = freezed,
    Object? hasDirectWithdraw = freezed,
    Object? hasNchl = freezed,
    Object? hasMobileBanking = freezed,
    Object? playStoreLink = freezed,
    Object? appStoreLink = freezed,
    Object? branches = freezed,
  }) {
    return _then(_$_BankDto(
      idx: freezed == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      shortName: freezed == shortName
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String?,
      swiftCode: freezed == swiftCode
          ? _value.swiftCode
          : swiftCode // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      hasCardPayment: freezed == hasCardPayment
          ? _value.hasCardPayment
          : hasCardPayment // ignore: cast_nullable_to_non_nullable
              as bool?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      eBankingUrl: freezed == eBankingUrl
          ? _value.eBankingUrl
          : eBankingUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      hasEBanking: freezed == hasEBanking
          ? _value.hasEBanking
          : hasEBanking // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasMobileCheckout: freezed == hasMobileCheckout
          ? _value.hasMobileCheckout
          : hasMobileCheckout // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasDirectWithdraw: freezed == hasDirectWithdraw
          ? _value.hasDirectWithdraw
          : hasDirectWithdraw // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasNchl: freezed == hasNchl
          ? _value.hasNchl
          : hasNchl // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasMobileBanking: freezed == hasMobileBanking
          ? _value.hasMobileBanking
          : hasMobileBanking // ignore: cast_nullable_to_non_nullable
              as bool?,
      playStoreLink: freezed == playStoreLink
          ? _value.playStoreLink
          : playStoreLink // ignore: cast_nullable_to_non_nullable
              as String?,
      appStoreLink: freezed == appStoreLink
          ? _value.appStoreLink
          : appStoreLink // ignore: cast_nullable_to_non_nullable
              as String?,
      branches: freezed == branches
          ? _value._branches
          : branches // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BankDto implements _BankDto {
  _$_BankDto(
      {this.idx,
      this.name,
      @JsonKey(name: 'short_name') this.shortName,
      @JsonKey(name: 'swift_code') this.swiftCode,
      this.logo,
      @JsonKey(name: 'has_cardpayment') this.hasCardPayment,
      this.address,
      @JsonKey(name: 'ebanking_url') this.eBankingUrl,
      @JsonKey(name: 'has_ebanking') this.hasEBanking,
      @JsonKey(name: 'has_mobile_checkout') this.hasMobileCheckout,
      @JsonKey(name: 'has_direct_withdraw') this.hasDirectWithdraw,
      @JsonKey(name: 'has_nchl') this.hasNchl,
      @JsonKey(name: 'has_mobile_banking') this.hasMobileBanking,
      @JsonKey(name: 'play_store') this.playStoreLink,
      @JsonKey(name: 'app_store') this.appStoreLink,
      final List<String>? branches})
      : _branches = branches;

  factory _$_BankDto.fromJson(Map<String, dynamic> json) =>
      _$$_BankDtoFromJson(json);

  @override
  final String? idx;
  @override
  final String? name;

  ///
  @override
  @JsonKey(name: 'short_name')
  final String? shortName;
  @override
  @JsonKey(name: 'swift_code')
  final String? swiftCode;
  @override
  final String? logo;
  @override
  @JsonKey(name: 'has_cardpayment')
  final bool? hasCardPayment;
  @override
  final String? address;
  @override
  @JsonKey(name: 'ebanking_url')
  final String? eBankingUrl;
  @override
  @JsonKey(name: 'has_ebanking')
  final bool? hasEBanking;
  @override
  @JsonKey(name: 'has_mobile_checkout')
  final bool? hasMobileCheckout;
  @override
  @JsonKey(name: 'has_direct_withdraw')
  final bool? hasDirectWithdraw;
  @override
  @JsonKey(name: 'has_nchl')
  final bool? hasNchl;
  @override
  @JsonKey(name: 'has_mobile_banking')
  final bool? hasMobileBanking;
  @override
  @JsonKey(name: 'play_store')
  final String? playStoreLink;
  @override
  @JsonKey(name: 'app_store')
  final String? appStoreLink;
  final List<String>? _branches;
  @override
  List<String>? get branches {
    final value = _branches;
    if (value == null) return null;
    if (_branches is EqualUnmodifiableListView) return _branches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BankDto(idx: $idx, name: $name, shortName: $shortName, swiftCode: $swiftCode, logo: $logo, hasCardPayment: $hasCardPayment, address: $address, eBankingUrl: $eBankingUrl, hasEBanking: $hasEBanking, hasMobileCheckout: $hasMobileCheckout, hasDirectWithdraw: $hasDirectWithdraw, hasNchl: $hasNchl, hasMobileBanking: $hasMobileBanking, playStoreLink: $playStoreLink, appStoreLink: $appStoreLink, branches: $branches)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BankDto &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.shortName, shortName) ||
                other.shortName == shortName) &&
            (identical(other.swiftCode, swiftCode) ||
                other.swiftCode == swiftCode) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.hasCardPayment, hasCardPayment) ||
                other.hasCardPayment == hasCardPayment) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.eBankingUrl, eBankingUrl) ||
                other.eBankingUrl == eBankingUrl) &&
            (identical(other.hasEBanking, hasEBanking) ||
                other.hasEBanking == hasEBanking) &&
            (identical(other.hasMobileCheckout, hasMobileCheckout) ||
                other.hasMobileCheckout == hasMobileCheckout) &&
            (identical(other.hasDirectWithdraw, hasDirectWithdraw) ||
                other.hasDirectWithdraw == hasDirectWithdraw) &&
            (identical(other.hasNchl, hasNchl) || other.hasNchl == hasNchl) &&
            (identical(other.hasMobileBanking, hasMobileBanking) ||
                other.hasMobileBanking == hasMobileBanking) &&
            (identical(other.playStoreLink, playStoreLink) ||
                other.playStoreLink == playStoreLink) &&
            (identical(other.appStoreLink, appStoreLink) ||
                other.appStoreLink == appStoreLink) &&
            const DeepCollectionEquality().equals(other._branches, _branches));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      idx,
      name,
      shortName,
      swiftCode,
      logo,
      hasCardPayment,
      address,
      eBankingUrl,
      hasEBanking,
      hasMobileCheckout,
      hasDirectWithdraw,
      hasNchl,
      hasMobileBanking,
      playStoreLink,
      appStoreLink,
      const DeepCollectionEquality().hash(_branches));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BankDtoCopyWith<_$_BankDto> get copyWith =>
      __$$_BankDtoCopyWithImpl<_$_BankDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BankDtoToJson(
      this,
    );
  }
}

abstract class _BankDto implements BankDto {
  factory _BankDto(
      {final String? idx,
      final String? name,
      @JsonKey(name: 'short_name') final String? shortName,
      @JsonKey(name: 'swift_code') final String? swiftCode,
      final String? logo,
      @JsonKey(name: 'has_cardpayment') final bool? hasCardPayment,
      final String? address,
      @JsonKey(name: 'ebanking_url') final String? eBankingUrl,
      @JsonKey(name: 'has_ebanking') final bool? hasEBanking,
      @JsonKey(name: 'has_mobile_checkout') final bool? hasMobileCheckout,
      @JsonKey(name: 'has_direct_withdraw') final bool? hasDirectWithdraw,
      @JsonKey(name: 'has_nchl') final bool? hasNchl,
      @JsonKey(name: 'has_mobile_banking') final bool? hasMobileBanking,
      @JsonKey(name: 'play_store') final String? playStoreLink,
      @JsonKey(name: 'app_store') final String? appStoreLink,
      final List<String>? branches}) = _$_BankDto;

  factory _BankDto.fromJson(Map<String, dynamic> json) = _$_BankDto.fromJson;

  @override
  String? get idx;
  @override
  String? get name;
  @override

  ///
  @JsonKey(name: 'short_name')
  String? get shortName;
  @override
  @JsonKey(name: 'swift_code')
  String? get swiftCode;
  @override
  String? get logo;
  @override
  @JsonKey(name: 'has_cardpayment')
  bool? get hasCardPayment;
  @override
  String? get address;
  @override
  @JsonKey(name: 'ebanking_url')
  String? get eBankingUrl;
  @override
  @JsonKey(name: 'has_ebanking')
  bool? get hasEBanking;
  @override
  @JsonKey(name: 'has_mobile_checkout')
  bool? get hasMobileCheckout;
  @override
  @JsonKey(name: 'has_direct_withdraw')
  bool? get hasDirectWithdraw;
  @override
  @JsonKey(name: 'has_nchl')
  bool? get hasNchl;
  @override
  @JsonKey(name: 'has_mobile_banking')
  bool? get hasMobileBanking;
  @override
  @JsonKey(name: 'play_store')
  String? get playStoreLink;
  @override
  @JsonKey(name: 'app_store')
  String? get appStoreLink;
  @override
  List<String>? get branches;
  @override
  @JsonKey(ignore: true)
  _$$_BankDtoCopyWith<_$_BankDto> get copyWith =>
      throw _privateConstructorUsedError;
}
