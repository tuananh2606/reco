// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MangaModelImpl _$$MangaModelImplFromJson(Map<String, dynamic> json) =>
    _$MangaModelImpl(
      status: (json['status'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => Manga.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MangaModelImplToJson(_$MangaModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'results': instance.results,
    };

_$MangaDetailsImpl _$$MangaDetailsImplFromJson(Map<String, dynamic> json) =>
    _$MangaDetailsImpl(
      status: (json['status'] as num).toInt(),
      results: Manga.fromJson(json['results'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MangaDetailsImplToJson(_$MangaDetailsImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'results': instance.results,
    };

_$MangaImpl _$$MangaImplFromJson(Map<String, dynamic> json) => _$MangaImpl(
      title: json['title'] as String,
      author: json['author'] as String,
      id: json['id'] as String?,
      img: json['img'] as String?,
      img1: json['image'] as String?,
      status: json['status'] as String?,
      genres: json['genres'] as String?,
      date: json['date'] as String?,
      description: json['description'] as String?,
      heading: json['heading'] as String?,
      updated:
          (json['updated'] as List<dynamic>?)?.map((e) => e as String).toList(),
      chapters: (json['chapters'] as List<dynamic>?)
          ?.map((e) => Chapter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MangaImplToJson(_$MangaImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'author': instance.author,
      'id': instance.id,
      'img': instance.img,
      'image': instance.img1,
      'status': instance.status,
      'genres': instance.genres,
      'date': instance.date,
      'description': instance.description,
      'heading': instance.heading,
      'updated': instance.updated,
      'chapters': instance.chapters,
    };

_$ChapterImpl _$$ChapterImplFromJson(Map<String, dynamic> json) =>
    _$ChapterImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$ChapterImplToJson(_$ChapterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };

_$PageModelImpl _$$PageModelImplFromJson(Map<String, dynamic> json) =>
    _$PageModelImpl(
      status: (json['status'] as num).toInt(),
      results:
          (json['results'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$PageModelImplToJson(_$PageModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'results': instance.results,
    };
