// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_cache.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetApiCacheCollection on Isar {
  IsarCollection<ApiCache> get apiCaches => this.collection();
}

const ApiCacheSchema = CollectionSchema(
  name: r'ApiCache',
  id: -1749736005945879971,
  properties: {
    r'bodyBytes': PropertySchema(
      id: 0,
      name: r'bodyBytes',
      type: IsarType.longList,
    ),
    r'cachedTime': PropertySchema(
      id: 1,
      name: r'cachedTime',
      type: IsarType.dateTime,
    ),
    r'headers': PropertySchema(
      id: 2,
      name: r'headers',
      type: IsarType.string,
    ),
    r'path': PropertySchema(
      id: 3,
      name: r'path',
      type: IsarType.string,
    ),
    r'statusCode': PropertySchema(
      id: 4,
      name: r'statusCode',
      type: IsarType.long,
    )
  },
  estimateSize: _apiCacheEstimateSize,
  serialize: _apiCacheSerialize,
  deserialize: _apiCacheDeserialize,
  deserializeProp: _apiCacheDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _apiCacheGetId,
  getLinks: _apiCacheGetLinks,
  attach: _apiCacheAttach,
  version: '3.1.0+1',
);

int _apiCacheEstimateSize(
  ApiCache object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.bodyBytes.length * 8;
  bytesCount += 3 + object.headers.length * 3;
  bytesCount += 3 + object.path.length * 3;
  return bytesCount;
}

void _apiCacheSerialize(
  ApiCache object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLongList(offsets[0], object.bodyBytes);
  writer.writeDateTime(offsets[1], object.cachedTime);
  writer.writeString(offsets[2], object.headers);
  writer.writeString(offsets[3], object.path);
  writer.writeLong(offsets[4], object.statusCode);
}

ApiCache _apiCacheDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ApiCache(
    bodyBytes: reader.readLongList(offsets[0]) ?? [],
    cachedTime: reader.readDateTime(offsets[1]),
    headers: reader.readString(offsets[2]),
    id: id,
    path: reader.readString(offsets[3]),
    statusCode: reader.readLong(offsets[4]),
  );
  return object;
}

P _apiCacheDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongList(offset) ?? []) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _apiCacheGetId(ApiCache object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _apiCacheGetLinks(ApiCache object) {
  return [];
}

void _apiCacheAttach(IsarCollection<dynamic> col, Id id, ApiCache object) {
  object.id = id;
}

extension ApiCacheQueryWhereSort on QueryBuilder<ApiCache, ApiCache, QWhere> {
  QueryBuilder<ApiCache, ApiCache, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ApiCacheQueryWhere on QueryBuilder<ApiCache, ApiCache, QWhereClause> {
  QueryBuilder<ApiCache, ApiCache, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ApiCacheQueryFilter
    on QueryBuilder<ApiCache, ApiCache, QFilterCondition> {
  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition>
      bodyBytesElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bodyBytes',
        value: value,
      ));
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition>
      bodyBytesElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bodyBytes',
        value: value,
      ));
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition>
      bodyBytesElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bodyBytes',
        value: value,
      ));
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition>
      bodyBytesElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bodyBytes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition>
      bodyBytesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bodyBytes',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition> bodyBytesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bodyBytes',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition>
      bodyBytesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bodyBytes',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition>
      bodyBytesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bodyBytes',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition>
      bodyBytesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bodyBytes',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition>
      bodyBytesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bodyBytes',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition> cachedTimeEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cachedTime',
        value: value,
      ));
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition> cachedTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cachedTime',
        value: value,
      ));
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition> cachedTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cachedTime',
        value: value,
      ));
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition> cachedTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cachedTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition> headersEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'headers',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition> headersGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'headers',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition> headersLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'headers',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition> headersBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'headers',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition> headersStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'headers',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition> headersEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'headers',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition> headersContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'headers',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition> headersMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'headers',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition> headersIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'headers',
        value: '',
      ));
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition> headersIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'headers',
        value: '',
      ));
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition> pathEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'path',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition> pathGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'path',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition> pathLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'path',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition> pathBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'path',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition> pathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'path',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition> pathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'path',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition> pathContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'path',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition> pathMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'path',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition> pathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'path',
        value: '',
      ));
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition> pathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'path',
        value: '',
      ));
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition> statusCodeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'statusCode',
        value: value,
      ));
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition> statusCodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'statusCode',
        value: value,
      ));
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition> statusCodeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'statusCode',
        value: value,
      ));
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterFilterCondition> statusCodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'statusCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ApiCacheQueryObject
    on QueryBuilder<ApiCache, ApiCache, QFilterCondition> {}

extension ApiCacheQueryLinks
    on QueryBuilder<ApiCache, ApiCache, QFilterCondition> {}

extension ApiCacheQuerySortBy on QueryBuilder<ApiCache, ApiCache, QSortBy> {
  QueryBuilder<ApiCache, ApiCache, QAfterSortBy> sortByCachedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cachedTime', Sort.asc);
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterSortBy> sortByCachedTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cachedTime', Sort.desc);
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterSortBy> sortByHeaders() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'headers', Sort.asc);
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterSortBy> sortByHeadersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'headers', Sort.desc);
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterSortBy> sortByPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'path', Sort.asc);
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterSortBy> sortByPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'path', Sort.desc);
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterSortBy> sortByStatusCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statusCode', Sort.asc);
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterSortBy> sortByStatusCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statusCode', Sort.desc);
    });
  }
}

extension ApiCacheQuerySortThenBy
    on QueryBuilder<ApiCache, ApiCache, QSortThenBy> {
  QueryBuilder<ApiCache, ApiCache, QAfterSortBy> thenByCachedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cachedTime', Sort.asc);
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterSortBy> thenByCachedTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cachedTime', Sort.desc);
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterSortBy> thenByHeaders() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'headers', Sort.asc);
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterSortBy> thenByHeadersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'headers', Sort.desc);
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterSortBy> thenByPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'path', Sort.asc);
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterSortBy> thenByPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'path', Sort.desc);
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterSortBy> thenByStatusCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statusCode', Sort.asc);
    });
  }

  QueryBuilder<ApiCache, ApiCache, QAfterSortBy> thenByStatusCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statusCode', Sort.desc);
    });
  }
}

extension ApiCacheQueryWhereDistinct
    on QueryBuilder<ApiCache, ApiCache, QDistinct> {
  QueryBuilder<ApiCache, ApiCache, QDistinct> distinctByBodyBytes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bodyBytes');
    });
  }

  QueryBuilder<ApiCache, ApiCache, QDistinct> distinctByCachedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cachedTime');
    });
  }

  QueryBuilder<ApiCache, ApiCache, QDistinct> distinctByHeaders(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'headers', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ApiCache, ApiCache, QDistinct> distinctByPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'path', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ApiCache, ApiCache, QDistinct> distinctByStatusCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'statusCode');
    });
  }
}

extension ApiCacheQueryProperty
    on QueryBuilder<ApiCache, ApiCache, QQueryProperty> {
  QueryBuilder<ApiCache, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ApiCache, List<int>, QQueryOperations> bodyBytesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bodyBytes');
    });
  }

  QueryBuilder<ApiCache, DateTime, QQueryOperations> cachedTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cachedTime');
    });
  }

  QueryBuilder<ApiCache, String, QQueryOperations> headersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'headers');
    });
  }

  QueryBuilder<ApiCache, String, QQueryOperations> pathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'path');
    });
  }

  QueryBuilder<ApiCache, int, QQueryOperations> statusCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'statusCode');
    });
  }
}
