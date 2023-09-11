// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseDto _$ResponseDtoFromJson(Map<String, dynamic> json) {
  return _ResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ResponseDto {
  ///
  @JsonKey(name: 'total_pages')
  int? get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_records')
  int? get totalRecords => throw _privateConstructorUsedError;
  @JsonKey(name: 'record_range')
  List<int>? get recordRange => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_ebanking')
  bool? get hasBanking => throw _privateConstructorUsedError;
  @JsonKey(name: 'records')
  List<BankDto>? get banks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseDtoCopyWith<ResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDtoCopyWith<$Res> {
  factory $ResponseDtoCopyWith(
          ResponseDto value, $Res Function(ResponseDto) then) =
      _$ResponseDtoCopyWithImpl<$Res, ResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'total_records') int? totalRecords,
      @JsonKey(name: 'record_range') List<int>? recordRange,
      @JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'has_ebanking') bool? hasBanking,
      @JsonKey(name: 'records') List<BankDto>? banks});
}

/// @nodoc
class _$ResponseDtoCopyWithImpl<$Res, $Val extends ResponseDto>
    implements $ResponseDtoCopyWith<$Res> {
  _$ResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPages = freezed,
    Object? totalRecords = freezed,
    Object? recordRange = freezed,
    Object? currentPage = freezed,
    Object? hasBanking = freezed,
    Object? banks = freezed,
  }) {
    return _then(_value.copyWith(
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalRecords: freezed == totalRecords
          ? _value.totalRecords
          : totalRecords // ignore: cast_nullable_to_non_nullable
              as int?,
      recordRange: freezed == recordRange
          ? _value.recordRange
          : recordRange // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      hasBanking: freezed == hasBanking
          ? _value.hasBanking
          : hasBanking // ignore: cast_nullable_to_non_nullable
              as bool?,
      banks: freezed == banks
          ? _value.banks
          : banks // ignore: cast_nullable_to_non_nullable
              as List<BankDto>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponseDtoCopyWith<$Res>
    implements $ResponseDtoCopyWith<$Res> {
  factory _$$_ResponseDtoCopyWith(
          _$_ResponseDto value, $Res Function(_$_ResponseDto) then) =
      __$$_ResponseDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'total_records') int? totalRecords,
      @JsonKey(name: 'record_range') List<int>? recordRange,
      @JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'has_ebanking') bool? hasBanking,
      @JsonKey(name: 'records') List<BankDto>? banks});
}

/// @nodoc
class __$$_ResponseDtoCopyWithImpl<$Res>
    extends _$ResponseDtoCopyWithImpl<$Res, _$_ResponseDto>
    implements _$$_ResponseDtoCopyWith<$Res> {
  __$$_ResponseDtoCopyWithImpl(
      _$_ResponseDto _value, $Res Function(_$_ResponseDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPages = freezed,
    Object? totalRecords = freezed,
    Object? recordRange = freezed,
    Object? currentPage = freezed,
    Object? hasBanking = freezed,
    Object? banks = freezed,
  }) {
    return _then(_$_ResponseDto(
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalRecords: freezed == totalRecords
          ? _value.totalRecords
          : totalRecords // ignore: cast_nullable_to_non_nullable
              as int?,
      recordRange: freezed == recordRange
          ? _value._recordRange
          : recordRange // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      hasBanking: freezed == hasBanking
          ? _value.hasBanking
          : hasBanking // ignore: cast_nullable_to_non_nullable
              as bool?,
      banks: freezed == banks
          ? _value._banks
          : banks // ignore: cast_nullable_to_non_nullable
              as List<BankDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseDto implements _ResponseDto {
  _$_ResponseDto(
      {@JsonKey(name: 'total_pages') this.totalPages,
      @JsonKey(name: 'total_records') this.totalRecords,
      @JsonKey(name: 'record_range') final List<int>? recordRange,
      @JsonKey(name: 'current_page') this.currentPage,
      @JsonKey(name: 'has_ebanking') this.hasBanking,
      @JsonKey(name: 'records') final List<BankDto>? banks})
      : _recordRange = recordRange,
        _banks = banks;

  factory _$_ResponseDto.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseDtoFromJson(json);

  ///
  @override
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @override
  @JsonKey(name: 'total_records')
  final int? totalRecords;
  final List<int>? _recordRange;
  @override
  @JsonKey(name: 'record_range')
  List<int>? get recordRange {
    final value = _recordRange;
    if (value == null) return null;
    if (_recordRange is EqualUnmodifiableListView) return _recordRange;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'current_page')
  final int? currentPage;
  @override
  @JsonKey(name: 'has_ebanking')
  final bool? hasBanking;
  final List<BankDto>? _banks;
  @override
  @JsonKey(name: 'records')
  List<BankDto>? get banks {
    final value = _banks;
    if (value == null) return null;
    if (_banks is EqualUnmodifiableListView) return _banks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponseDto(totalPages: $totalPages, totalRecords: $totalRecords, recordRange: $recordRange, currentPage: $currentPage, hasBanking: $hasBanking, banks: $banks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseDto &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalRecords, totalRecords) ||
                other.totalRecords == totalRecords) &&
            const DeepCollectionEquality()
                .equals(other._recordRange, _recordRange) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.hasBanking, hasBanking) ||
                other.hasBanking == hasBanking) &&
            const DeepCollectionEquality().equals(other._banks, _banks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalPages,
      totalRecords,
      const DeepCollectionEquality().hash(_recordRange),
      currentPage,
      hasBanking,
      const DeepCollectionEquality().hash(_banks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseDtoCopyWith<_$_ResponseDto> get copyWith =>
      __$$_ResponseDtoCopyWithImpl<_$_ResponseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseDtoToJson(
      this,
    );
  }
}

abstract class _ResponseDto implements ResponseDto {
  factory _ResponseDto(
      {@JsonKey(name: 'total_pages') final int? totalPages,
      @JsonKey(name: 'total_records') final int? totalRecords,
      @JsonKey(name: 'record_range') final List<int>? recordRange,
      @JsonKey(name: 'current_page') final int? currentPage,
      @JsonKey(name: 'has_ebanking') final bool? hasBanking,
      @JsonKey(name: 'records') final List<BankDto>? banks}) = _$_ResponseDto;

  factory _ResponseDto.fromJson(Map<String, dynamic> json) =
      _$_ResponseDto.fromJson;

  @override

  ///
  @JsonKey(name: 'total_pages')
  int? get totalPages;
  @override
  @JsonKey(name: 'total_records')
  int? get totalRecords;
  @override
  @JsonKey(name: 'record_range')
  List<int>? get recordRange;
  @override
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @override
  @JsonKey(name: 'has_ebanking')
  bool? get hasBanking;
  @override
  @JsonKey(name: 'records')
  List<BankDto>? get banks;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseDtoCopyWith<_$_ResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}
