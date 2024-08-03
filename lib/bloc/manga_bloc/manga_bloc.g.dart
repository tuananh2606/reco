// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MangaStateImpl _$$MangaStateImplFromJson(Map<String, dynamic> json) =>
    _$MangaStateImpl(
      status: $enumDecodeNullable(_$MangaStatusEnumMap, json['status']) ??
          MangaStatus.initial,
      mangas: json['mangas'] == null
          ? const MangaModel(status: 0, results: [])
          : MangaModel.fromJson(json['mangas'] as Map<String, dynamic>),
      hasReachedMax: json['hasReachedMax'] as bool? ?? false,
    );

Map<String, dynamic> _$$MangaStateImplToJson(_$MangaStateImpl instance) =>
    <String, dynamic>{
      'status': _$MangaStatusEnumMap[instance.status]!,
      'mangas': instance.mangas,
      'hasReachedMax': instance.hasReachedMax,
    };

const _$MangaStatusEnumMap = {
  MangaStatus.initial: 'initial',
  MangaStatus.loading: 'loading',
  MangaStatus.success: 'success',
  MangaStatus.error: 'error',
};
