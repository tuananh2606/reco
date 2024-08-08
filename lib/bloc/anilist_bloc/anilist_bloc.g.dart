// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anilist_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnilistStateImpl _$$AnilistStateImplFromJson(Map<String, dynamic> json) =>
    _$AnilistStateImpl(
      status: $enumDecodeNullable(_$AnilistStatusEnumMap, json['status']) ??
          AnilistStatus.initial,
      results: json['results'] == null
          ? null
          : AnilistModel.fromJson(json['results'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AnilistStateImplToJson(_$AnilistStateImpl instance) =>
    <String, dynamic>{
      'status': _$AnilistStatusEnumMap[instance.status]!,
      'results': instance.results,
    };

const _$AnilistStatusEnumMap = {
  AnilistStatus.initial: 'initial',
  AnilistStatus.loading: 'loading',
  AnilistStatus.success: 'success',
  AnilistStatus.error: 'error',
};
