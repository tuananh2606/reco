// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga_search_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MangaSearchStateImpl _$$MangaSearchStateImplFromJson(
        Map<String, dynamic> json) =>
    _$MangaSearchStateImpl(
      status: $enumDecodeNullable(_$MangaSearchStatusEnumMap, json['status']) ??
          MangaSearchStatus.initial,
      response: json['response'] == null
          ? const MangaModel(status: 0, results: [])
          : MangaModel.fromJson(json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MangaSearchStateImplToJson(
        _$MangaSearchStateImpl instance) =>
    <String, dynamic>{
      'status': _$MangaSearchStatusEnumMap[instance.status]!,
      'response': instance.response,
    };

const _$MangaSearchStatusEnumMap = {
  MangaSearchStatus.initial: 'initial',
  MangaSearchStatus.loading: 'loading',
  MangaSearchStatus.success: 'success',
  MangaSearchStatus.error: 'error',
};
