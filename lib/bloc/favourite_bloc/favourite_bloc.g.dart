// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavouriteStateImpl _$$FavouriteStateImplFromJson(Map<String, dynamic> json) =>
    _$FavouriteStateImpl(
      status: $enumDecodeNullable(_$FavouriteStatusEnumMap, json['status']) ??
          FavouriteStatus.initial,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => FavouriteModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$FavouriteStateImplToJson(
        _$FavouriteStateImpl instance) =>
    <String, dynamic>{
      'status': _$FavouriteStatusEnumMap[instance.status]!,
      'results': instance.results,
    };

const _$FavouriteStatusEnumMap = {
  FavouriteStatus.initial: 'initial',
  FavouriteStatus.loading: 'loading',
  FavouriteStatus.success: 'success',
  FavouriteStatus.error: 'error',
};
