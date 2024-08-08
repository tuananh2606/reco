// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anilist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnilistModelImpl _$$AnilistModelImplFromJson(Map<String, dynamic> json) =>
    _$AnilistModelImpl(
      currentPage: (json['currentPage'] as num?)?.toInt(),
      hasNextPage: json['hasNextPage'] as bool?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Results.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AnilistModelImplToJson(_$AnilistModelImpl instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'hasNextPage': instance.hasNextPage,
      'results': instance.results,
    };

_$ResultsImpl _$$ResultsImplFromJson(Map<String, dynamic> json) =>
    _$ResultsImpl(
      id: json['id'] as String?,
      malId: (json['malId'] as num?)?.toInt(),
      title: json['title'] == null
          ? null
          : Title.fromJson(json['title'] as Map<String, dynamic>),
      status: json['status'] as String?,
      image: json['image'] as String?,
      imageHash: json['imageHash'] as String?,
      cover: json['cover'] as String?,
      coverHash: json['coverHash'] as String?,
      description: json['description'] as String?,
      rating: (json['rating'] as num?)?.toInt(),
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      color: json['color'] as String?,
      type: json['type'] as String?,
      releaseDate: json['releaseDate'] as String?,
    );

Map<String, dynamic> _$$ResultsImplToJson(_$ResultsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'malId': instance.malId,
      'title': instance.title,
      'status': instance.status,
      'image': instance.image,
      'imageHash': instance.imageHash,
      'cover': instance.cover,
      'coverHash': instance.coverHash,
      'description': instance.description,
      'rating': instance.rating,
      'genres': instance.genres,
      'color': instance.color,
      'type': instance.type,
      'releaseDate': instance.releaseDate,
    };

_$TitleImpl _$$TitleImplFromJson(Map<String, dynamic> json) => _$TitleImpl(
      romaji: json['romaji'] as String?,
      english: json['english'] as String?,
      native: json['native'] as String?,
      userPreferred: json['userPreferred'] as String?,
    );

Map<String, dynamic> _$$TitleImplToJson(_$TitleImpl instance) =>
    <String, dynamic>{
      'romaji': instance.romaji,
      'english': instance.english,
      'native': instance.native,
      'userPreferred': instance.userPreferred,
    };
