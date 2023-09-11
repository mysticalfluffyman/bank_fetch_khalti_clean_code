import 'package:dartz/dartz.dart';

import '../../../core/error/faliures.dart';
import '../../../domain/entities/bank.dart';
import '../../../domain/repositories/bank_repository.dart';
import '../../utils/api_util.dart';
import 'bank_remote_data_source.dart';

///
class BankRepositoryImpl implements BankRepository {
  ///
  BankRepositoryImpl({required this.bankRemoteDataSource});

  ///
  final BankRemoteDataSource bankRemoteDataSource;
  @override
  Future<Either<Failure, List<Bank>>> fetchBanks() async => mapApiResponse(
        request: bankRemoteDataSource.fetchBanks(),
        mapData: (final e) => Right(((e?.banks) ?? []).map((res) {
          return Bank(
            idx: res.idx,
            name: res.name,
            shortName: res.shortName,
            logo: res.logo,
            swiftCode: res.swiftCode,
            hasCardPayment: res.hasCardPayment,
            address: res.address,
            eBankingUrl: res.eBankingUrl,
            hasEBanking: res.hasEBanking,
            hasMobileBanking: res.hasMobileBanking,
            hasDirectWithdraw: res.hasDirectWithdraw,
            hasNchl: res.hasNchl,
            hasMobileCheckout: res.hasMobileCheckout,
            playStoreLink: res.playStoreLink,
            appStoreLink: res.playStoreLink,
            branches: res.branches,
          );
        }).toList()),
      );
}
