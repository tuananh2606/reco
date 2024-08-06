import 'package:freezed_annotation/freezed_annotation.dart';

part 'manga_model.freezed.dart';
part 'manga_model.g.dart';

@freezed
class MangaModel with _$MangaModel {
  const factory MangaModel({
    required int status,
    required List<Manga> results,
  }) = _MangaModel;

  factory MangaModel.fromJson(Map<String, Object?> json) => _$MangaModelFromJson(json);
}

@freezed
class MangaDetails with _$MangaDetails {
  const factory MangaDetails({
    required int status,
    required Manga results,
  }) = _MangaDetails;

  factory MangaDetails.fromJson(Map<String, Object?> json) => _$MangaDetailsFromJson(json);
}

@freezed
class Manga with _$Manga {
  const factory Manga({
    required String title,
    required String author,
    String? id,
    @JsonKey(name: 'img') String? img,
    @JsonKey(name: 'image') String? img1,
    String? status,
    String? genres,
    String? date,
    String? description,
    String? heading,
    List<String>? updated,
    List<Chapter>? chapters,
  }) = _Manga;

  factory Manga.fromJson(Map<String, Object?> json) => _$MangaFromJson(json);
}

@freezed
class Chapter with _$Chapter {
  const factory Chapter({
    String? id,
    String? title,
  }) = _Chapter;

  factory Chapter.fromJson(Map<String, Object?> json) => _$ChapterFromJson(json);
}

@freezed
class PageModel with _$PageModel {
  const factory PageModel({
    required int status,
    required List<String> results,
  }) = _PageModel;

  factory PageModel.fromJson(Map<String, Object?> json) => _$PageModelFromJson(json);
}
