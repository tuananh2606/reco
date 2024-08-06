// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga_detail_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MangaDetailStateImpl _$$MangaDetailStateImplFromJson(
        Map<String, dynamic> json) =>
    _$MangaDetailStateImpl(
      status: $enumDecodeNullable(_$MangaDetailStatusEnumMap, json['status']) ??
          MangaDetailStatus.initial,
      response: json['response'] == null
          ? null
          : MangaDetails.fromJson(json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MangaDetailStateImplToJson(
        _$MangaDetailStateImpl instance) =>
    <String, dynamic>{
      'status': _$MangaDetailStatusEnumMap[instance.status]!,
      'response': instance.response,
    };

const _$MangaDetailStatusEnumMap = {
  MangaDetailStatus.initial: 'initial',
  MangaDetailStatus.loading: 'loading',
  MangaDetailStatus.success: 'success',
  MangaDetailStatus.error: 'error',
};
