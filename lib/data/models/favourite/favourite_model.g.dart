// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavouriteModelImpl _$$FavouriteModelImplFromJson(Map<String, dynamic> json) =>
    _$FavouriteModelImpl(
      id: (json['id'] as num?)?.toInt(),
      objectId: json['objectId'] as String?,
      title: json['title'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$FavouriteModelImplToJson(
        _$FavouriteModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'objectId': instance.objectId,
      'title': instance.title,
      'image': instance.image,
    };
