import 'package:khalti_task/src/data/models/response_dto.dart';

import '../../../core/error/faliures.dart';
import '../../utils/api_client.dart';
import '../../utils/api_response.dart';

///
abstract class BankRemoteDataSource {
  ///
  Future<ApiResponse<ResponseDto, Failure>> fetchBanks();
}

///
class BankRemoteDataSourceImpl implements BankRemoteDataSource {
  ///
  BankRemoteDataSourceImpl({required this.client});

  ///
  final ApiClient client;
  @override
  Future<ApiResponse<ResponseDto, Failure>> fetchBanks() async => client.get(
        path: '/api/v5/bank/',
        queryParameters: {
          // 'key': key,
          // 'q': searchTerm,
          // 'page': page,
          // 'per_page': perPage
        },
        fromJson: ResponseDto.fromJson,
      );
}
