import 'package:get_it/get_it.dart';
import 'package:khalti_task/pigeon.dart';
import 'package:khalti_task/src/presentation/features/search/cubit/banks_cubit.dart';

import 'src/data/repositories/search/bank_remote_data_source.dart';
import 'src/data/repositories/search/bank_repository_impl.dart';
import 'src/data/utils/api_client.dart';
import 'src/domain/repositories/bank_repository.dart';
import 'src/domain/usecases/fetch_banks.dart';

///
final serviceLocator = GetIt.instance;

///
Future<void> initLocator() async {
  serviceLocator
    ..registerLazySingleton<DeviceIdentifierDataApi>(
        () => DeviceIdentifierDataApi())
    ..registerLazySingleton<ApiClient>(
      () => ApiClientImpl(
          baseUrl: 'https://khalti.com',
          deviceIdentifierDataApi: serviceLocator()),
    )
    ..registerLazySingleton(() => FetchBanks(serviceLocator()))
    ..registerLazySingleton<BankRepository>(
      () => BankRepositoryImpl(
        bankRemoteDataSource: serviceLocator(),
      ),
    )
    ..registerLazySingleton<BankRemoteDataSource>(
      () => BankRemoteDataSourceImpl(
        client: serviceLocator(),
      ),
    )
    ..registerFactory(() => BanksCubit(
          fetchBanksUseCase: serviceLocator(),
        ));
}
