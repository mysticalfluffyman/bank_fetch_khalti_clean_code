import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:khalti_task/src/data/models/bank_dto.dart';

part 'response_dto.freezed.dart';
part 'response_dto.g.dart';

///
@freezed
class ResponseDto with _$ResponseDto {
  ///
  factory ResponseDto(
      {
      ///
      @JsonKey(name: 'total_pages') final int? totalPages,
      @JsonKey(name: 'total_records') final int? totalRecords,
      @JsonKey(name: 'record_range') final List<int>? recordRange,
      @JsonKey(name: 'current_page') final int? currentPage,
      @JsonKey(name: 'has_ebanking') final bool? hasBanking,
      @JsonKey(name: 'records') final List<BankDto>? banks}) = _ResponseDto;

  ///
  factory ResponseDto.fromJson(final Map<String, dynamic> json) =>
      _$ResponseDtoFromJson(json);
}
