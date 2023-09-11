// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BankDto _$$_BankDtoFromJson(Map<String, dynamic> json) => _$_BankDto(
      idx: json['idx'] as String?,
      name: json['name'] as String?,
      shortName: json['short_name'] as String?,
      swiftCode: json['swift_code'] as String?,
      logo: json['logo'] as String?,
      hasCardPayment: json['has_cardpayment'] as bool?,
      address: json['address'] as String?,
      eBankingUrl: json['ebanking_url'] as String?,
      hasEBanking: json['has_ebanking'] as bool?,
      hasMobileCheckout: json['has_mobile_checkout'] as bool?,
      hasDirectWithdraw: json['has_direct_withdraw'] as bool?,
      hasNchl: json['has_nchl'] as bool?,
      hasMobileBanking: json['has_mobile_banking'] as bool?,
      playStoreLink: json['play_store'] as String?,
      appStoreLink: json['app_store'] as String?,
      branches: (json['branches'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_BankDtoToJson(_$_BankDto instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'name': instance.name,
      'short_name': instance.shortName,
      'swift_code': instance.swiftCode,
      'logo': instance.logo,
      'has_cardpayment': instance.hasCardPayment,
      'address': instance.address,
      'ebanking_url': instance.eBankingUrl,
      'has_ebanking': instance.hasEBanking,
      'has_mobile_checkout': instance.hasMobileCheckout,
      'has_direct_withdraw': instance.hasDirectWithdraw,
      'has_nchl': instance.hasNchl,
      'has_mobile_banking': instance.hasMobileBanking,
      'play_store': instance.playStoreLink,
      'app_store': instance.appStoreLink,
      'branches': instance.branches,
    };
