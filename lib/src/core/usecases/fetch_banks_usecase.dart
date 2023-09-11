import 'package:dartz/dartz.dart';

import '../../domain/entities/bank.dart';
import '../error/faliures.dart';

///
abstract class FetchBanksUseCase {
  ///
  Future<Either<Failure, List<Bank>>> fetchBanks();
}
