import 'package:freezed_annotation/freezed_annotation.dart';

part 'anilist_model.freezed.dart';
part 'anilist_model.g.dart';

@freezed
class AnilistModel with _$AnilistModel {
  const factory AnilistModel({
    int? currentPage,
    bool? hasNextPage,
    List<Results>? results,
  }) = _AnilistModel;

  factory AnilistModel.fromJson(Map<String, Object?> json) => _$AnilistModelFromJson(json);
}

@freezed
class Results with _$Results {
  const factory Results({
    String? id,
    int? malId,
    Title? title,
    String? status,
    String? image,
    String? imageHash,
    String? cover,
    String? coverHash,
    String? description,
    int? rating,
    List<String>? genres,
    String? color,
    String? type,
    String? releaseDate,
  }) = _Results;

  factory Results.fromJson(Map<String, Object?> json) => _$ResultsFromJson(json);
}

@freezed
class Title with _$Title {
  const factory Title({
    String? romaji,
    String? english,
    String? native,
    String? userPreferred,
  }) = _Title;

  factory Title.fromJson(Map<String, Object?> json) => _$TitleFromJson(json);
}
