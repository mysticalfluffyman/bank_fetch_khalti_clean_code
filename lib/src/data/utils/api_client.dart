import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:isar/isar.dart';
import 'package:khalti_task/pigeon.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'api_cache.dart';
import 'api_response.dart';

///
abstract class ApiClient {
  /// GET call with error handling.
  Future<ApiResponse<T, U>> get<T, U>({
    required final String path,
    final T Function(Map<String, dynamic>)? fromJson,
    final U Function(Map<String, dynamic>)? fromJsonError,
    final Map<String, dynamic>? queryParameters,
    final Map<String, String>? headers,
    final bool followRedirects,
  });

  /// Dispose client.
  void dispose();
}

///
class ApiClientImpl implements ApiClient {
  ///
  ApiClientImpl({
    required this.baseUrl,
    required final DeviceIdentifierDataApi deviceIdentifierDataApi,
  }) : _deviceIdentifierDataApi = deviceIdentifierDataApi {
    _init();

    dio.options.baseUrl = baseUrl;
    dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
    ));
    dio.interceptors.add(
      RetryInterceptor(
        dio: dio,
        retries: 3,
        logPrint: (message) => log(message),
        retryDelays: const [
          Duration(seconds: 2),
          Duration(seconds: 4),
          Duration(seconds: 6),
        ],
      ),
    );
  }
  final DeviceIdentifierDataApi _deviceIdentifierDataApi;

  ///
  ///
  final String baseUrl;
  String deviceModel = '';

  ///
  Dio dio = Dio();

  @override
  void dispose() {}
  Future<void> _init() async {
    final instance = Isar.getInstance();

    final dir = await getApplicationDocumentsDirectory();
    deviceModel = await _deviceIdentifierDataApi.getDeviceModel();

    if (instance != null) {
      return;
    }
    await Isar.open(
      [ApiCacheSchema],
      directory: dir.path,
    );
  }

  @override
  Future<ApiResponse<T, U>> get<T, U>({
    required final String path,
    final T Function(Map<String, dynamic>)? fromJson,
    final U Function(Map<String, dynamic>)? fromJsonError,
    final Map<String, dynamic>? queryParameters,
    final Map<String, String>? headers,
    final bool followRedirects = true,
  }) async {
    dio.options.headers = {'DEVICE_MODEL': 'FLTASSIGN_PRATIK_$deviceModel'};
    try {
      final cache = await _cache<T, U>(
        id: _isarId(method: 'GET', path: path),
        fromJson: fromJson,
      );
      if (cache != null) {
        return cache;
      }

      final response = await dio.get(
        path,
        queryParameters: queryParameters,
      );
      final isar = Isar.getInstance();

      await isar?.writeTxn(
        () async {
          final id = _isarId(
            method: 'GET',
            path: path,
          );
          await isar.apiCaches.put(
            ApiCache(
              id: id,
              path: path,
              statusCode: response.statusCode ?? 404,
              bodyBytes: utf8.encode(jsonEncode(response.data)),
              headers: jsonEncode(response.headers.map),
              cachedTime: DateTime.now(),
            ),
          );
        },
      );

      return ApiResponse(
        content: response.data != null ? fromJson?.call(response.data) : null,
        statusCode: response.statusCode,
        headers: response.headers.map,
      );
    } on DioException catch (e) {
      return ApiResponse.error(
        message: e.message ?? '',
      );
    }
  }

  ///
  int _isarId({
    required final String method,
    required String path,
  }) {
    int hashedCode = '$method ${dio.options.baseUrl}$path'.hashCode;

    return hashedCode;
  }

  ///
  Future<ApiResponseData<T, U>?> _cache<T, U>({
    required final int id,
    final T Function(Map<String, dynamic>)? fromJson,
    final String operationName = '',
  }) async {
    final isar = Isar.getInstance();
    final apiCache = await isar?.apiCaches.get(id);
    if (apiCache != null) {
      final body = utf8.decode(apiCache.bodyBytes);
      final Map<String, dynamic>? responseObject = jsonDecode(body);

      return ApiResponseData<T, U>(
        content: responseObject != null ? fromJson?.call(responseObject) : null,
        headers: (jsonDecode(apiCache.headers) as Map<String, dynamic>).map(
          (final key, final dynamic value) =>
              MapEntry(key, value.map<String>((e) => e.toString()).toList()),
        ),
        statusCode: apiCache.statusCode,
      );
    }

    return null;
  }
}
