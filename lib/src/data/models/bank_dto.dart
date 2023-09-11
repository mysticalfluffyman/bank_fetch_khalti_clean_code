import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_dto.freezed.dart';
part 'bank_dto.g.dart';

///
@freezed
class BankDto with _$BankDto {
  ///
  factory BankDto({
    final String? idx,
    final String? name,

    ///
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
    final List<String>? branches,
  }) = _BankDto;

  ///
  factory BankDto.fromJson(final Map<String, dynamic> json) =>
      _$BankDtoFromJson(json);
}
