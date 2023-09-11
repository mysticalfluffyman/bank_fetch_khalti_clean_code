part of 'banks_cubit.dart';

@freezed
class BanksState with _$BanksState {
  const factory BanksState.initial() = _Initial;
  const factory BanksState.loading() = _Loading;
  const factory BanksState.fetched({required final List<Bank> banks}) =
      _Fetched;
  const factory BanksState.error(final String errorMessage) = _Error;
}
