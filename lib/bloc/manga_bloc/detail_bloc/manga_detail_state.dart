part of 'manga_detail_bloc.dart';

enum MangaDetailStatus {
  initial,
  loading,
  success,
  error;

  bool get isInitial => this == MangaDetailStatus.initial;
  bool get isLoading => this == MangaDetailStatus.loading;
  bool get isSuccess => this == MangaDetailStatus.success;
  bool get isError => this == MangaDetailStatus.error;
}

@freezed
class MangaDetailState with _$MangaDetailState {
  const factory MangaDetailState({
    @Default(MangaDetailStatus.initial) MangaDetailStatus status,
    MangaDetails? response,
  }) = _MangaDetailState;

  factory MangaDetailState.fromJson(Map<String, dynamic> json) => _$MangaDetailStateFromJson(json);
}
