// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pages_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MangaPagesStateImpl _$$MangaPagesStateImplFromJson(
        Map<String, dynamic> json) =>
    _$MangaPagesStateImpl(
      status: $enumDecodeNullable(_$MangaPagesStatusEnumMap, json['status']) ??
          MangaPagesStatus.initial,
      response: json['response'] == null
          ? null
          : PageModel.fromJson(json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MangaPagesStateImplToJson(
        _$MangaPagesStateImpl instance) =>
    <String, dynamic>{
      'status': _$MangaPagesStatusEnumMap[instance.status]!,
      'response': instance.response,
    };

const _$MangaPagesStatusEnumMap = {
  MangaPagesStatus.initial: 'initial',
  MangaPagesStatus.loading: 'loading',
  MangaPagesStatus.success: 'success',
  MangaPagesStatus.error: 'error',
};
