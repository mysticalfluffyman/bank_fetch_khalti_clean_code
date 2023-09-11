import 'package:isar/isar.dart';

part 'api_cache.g.dart';

/// API Cache.
@Collection()
class ApiCache {
  /// API Cache.
  ApiCache({
    required this.id,
    required this.path,
    required this.statusCode,
    required this.bodyBytes,
    required this.headers,
    required this.cachedTime,
  });

  /// ID.
  Id id = Isar.autoIncrement;

  /// URI.
  final String path;

  /// Status code.
  final int statusCode;

  /// Body bytes.
  final List<int> bodyBytes;

  /// Headers.
  final String headers;

  /// Cached date time.
  final DateTime cachedTime;
}
