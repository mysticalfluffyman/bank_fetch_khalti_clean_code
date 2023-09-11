import 'package:dartz/dartz.dart';

import '../../core/error/faliures.dart';
import '../entities/bank.dart';

///
abstract class BankRepository {
  ///
  Future<Either<Failure, List<Bank>>> fetchBanks();
}
