import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:khalti_task/src/domain/usecases/fetch_banks.dart';

import '../../../../../pigeon.dart';
import '../../../../domain/entities/bank.dart';

part 'banks_state.dart';
part 'banks_cubit.freezed.dart';

class BanksCubit extends Cubit<BanksState> {
  BanksCubit({
    required final FetchBanks fetchBanksUseCase,
  })  : _fetchBanksUseCase = fetchBanksUseCase,
        super(const BanksState.initial()) {
    _init();
  }
  List<Bank> _banks = [];
  String deviceModel = '';

  ///
  final FetchBanks _fetchBanksUseCase;

  _init() async {
    Future.delayed(const Duration(milliseconds: 500), () => fetchBanks());
  }

  void fetchBanks() async {
    emit(const BanksState.loading());
    final result = await _fetchBanksUseCase.fetchBanks();
    result.fold((failure) => emit(BanksState.error(failure.message)), (banks) {
      _banks = banks;
      emit(BanksState.fetched(banks: _banks));
    });
  }

  void searchBanks({required final String searchString}) {
    if (searchString.isNotEmpty) {
      List<Bank> filteredBanks = _banks
          .where((element) => (element.name ?? '')
              .toUpperCase()
              .contains(searchString.toUpperCase()))
          .toList();
      emit(BanksState.fetched(banks: filteredBanks));
    } else {
      emit(BanksState.fetched(banks: _banks));
    }
  }
}
