import 'package:freezed_annotation/freezed_annotation.dart';

part 'favourite_model.freezed.dart';
part 'favourite_model.g.dart';

@freezed
class FavouriteModel with _$FavouriteModel {
  const factory FavouriteModel({
    int? id,
    String? objectId,
    String? title,
    String? image,
  }) = _FavouriteModel;

  factory FavouriteModel.fromJson(Map<String, Object?> json) => _$FavouriteModelFromJson(json);
}
