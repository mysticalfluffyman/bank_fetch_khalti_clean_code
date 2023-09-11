import 'package:dartz/dartz.dart';

import '../../core/error/faliures.dart';
import '../../core/usecases/fetch_banks_usecase.dart';
import '../entities/bank.dart';
import '../repositories/bank_repository.dart';

///
class FetchBanks implements FetchBanksUseCase {
  ///
  FetchBanks(this.repository);

  ///
  final BankRepository repository;

  ///
  @override
  Future<Either<Failure, List<Bank>>> fetchBanks() async =>
      repository.fetchBanks();
}
