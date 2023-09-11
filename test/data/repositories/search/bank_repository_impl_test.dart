import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:khalti_task/src/core/error/faliures.dart';
import 'package:khalti_task/src/data/models/bank_dto.dart';
import 'package:khalti_task/src/data/models/response_dto.dart';
import 'package:khalti_task/src/data/repositories/search/bank_remote_data_source.dart';
import 'package:khalti_task/src/data/repositories/search/bank_repository_impl.dart';
import 'package:khalti_task/src/data/utils/api_response.dart';
import 'package:khalti_task/src/domain/entities/bank.dart';
import 'package:mocktail/mocktail.dart';

const response = {
  "total_pages": 1,
  "total_records": 25,
  "next": null,
  "previous": null,
  "record_range": [1, 25],
  "current_page": 1,
  "records": [
    {
      "idx": "UZmPqTDkdhKmukdZe2gVWZ",
      "name": "Agricultural Development Bank Limited",
      "short_name": "ADBL",
      "logo":
          "https://khalti-static.s3.ap-south-1.amazonaws.com/media/bank-logo/adbl.png",
      "swift_code": "ADBLNPKA",
      "has_cardpayment": false,
      "address": "Singhadurbar, Kathmandu",
      "ebanking_url": "",
      "has_ebanking": true,
      "has_mobile_checkout": true,
      "has_direct_withdraw": true,
      "has_nchl": false,
      "has_mobile_banking": false,
      "play_store": "",
      "app_store": "",
      "branches": []
    },
  ]
};

class MockBankRemoteDataSource extends Mock implements BankRemoteDataSource {}

void main() {
  late MockBankRemoteDataSource mockBankRemoteDataSource;
  late BankRepositoryImpl bankRepositoryImpl;

  setUp(() {
    mockBankRemoteDataSource = MockBankRemoteDataSource();
    bankRepositoryImpl =
        BankRepositoryImpl(bankRemoteDataSource: mockBankRemoteDataSource);
  });
  group('getBanks', () {
    const bank = Bank(
        idx: 'UZmPqTDkdhKmukdZe2gVWZ',
        shortName: 'ADBL',
        logo:
            'https://khalti-static.s3.ap-south-1.amazonaws.com/media/bank-logo/adbl.png',
        name: 'Agricultural Development Bank Limited',
        swiftCode: "ADBLNPKA",
        hasCardPayment: false,
        address: "Singhadurbar, Kathmandu",
        eBankingUrl: "",
        hasEBanking: true,
        hasMobileCheckout: true,
        hasDirectWithdraw: true,
        hasNchl: false,
        hasMobileBanking: false,
        playStoreLink: "",
        appStoreLink: "",
        branches: []);

    const bankList = [bank];

    test('should return list of banks', () async {
      when(() => mockBankRemoteDataSource.fetchBanks()).thenAnswer((_) async =>
          ApiResponse(
              content: ResponseDto.fromJson(response),
              statusCode: 200,
              headers: {}));

      final result = await bankRepositoryImpl.fetchBanks();

      verify(() => mockBankRemoteDataSource.fetchBanks());
      expect(result, equals(const Right(bankList)));
    });
  });
}
