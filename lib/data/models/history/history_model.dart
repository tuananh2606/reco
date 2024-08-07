import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_model.freezed.dart';
part 'history_model.g.dart';

@freezed
class HistoryModel with _$HistoryModel {
  const factory HistoryModel({
    int? id,
    String? objectId,
    String? title,
    String? image,
  }) = _HistoryModel;

  factory HistoryModel.fromJson(Map<String, Object?> json) => _$HistoryModelFromJson(json);
}
