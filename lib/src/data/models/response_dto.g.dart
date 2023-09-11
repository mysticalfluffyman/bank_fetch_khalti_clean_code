// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseDto _$$_ResponseDtoFromJson(Map<String, dynamic> json) =>
    _$_ResponseDto(
      totalPages: json['total_pages'] as int?,
      totalRecords: json['total_records'] as int?,
      recordRange: (json['record_range'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      currentPage: json['current_page'] as int?,
      hasBanking: json['has_ebanking'] as bool?,
      banks: (json['records'] as List<dynamic>?)
          ?.map((e) => BankDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResponseDtoToJson(_$_ResponseDto instance) =>
    <String, dynamic>{
      'total_pages': instance.totalPages,
      'total_records': instance.totalRecords,
      'record_range': instance.recordRange,
      'current_page': instance.currentPage,
      'has_ebanking': instance.hasBanking,
      'records': instance.banks,
    };
