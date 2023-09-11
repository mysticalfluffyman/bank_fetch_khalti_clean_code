import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank.freezed.dart';

///
@freezed
class Bank with _$Bank {
  ///
  const factory Bank({
    final String? idx,
    final String? name,
    final String? shortName,
    final String? swiftCode,
    final String? logo,
    final bool? hasCardPayment,
    final String? address,
    final String? eBankingUrl,
    final bool? hasEBanking,
    final bool? hasMobileCheckout,
    final bool? hasDirectWithdraw,
    final bool? hasNchl,
    final bool? hasMobileBanking,
    final String? playStoreLink,
    final String? appStoreLink,
    final List<String>? branches,
  }) = _Bank;
}
