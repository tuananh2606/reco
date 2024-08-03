part of 'manga_bloc.dart';

enum MangaStatus {
  initial,
  loading,
  success,
  error;

  bool get isInitial => this == MangaStatus.initial;
  bool get isLoading => this == MangaStatus.loading;
  bool get isSuccess => this == MangaStatus.success;
  bool get isError => this == MangaStatus.error;
}

@freezed
class MangaState with _$MangaState {
  const factory MangaState({
    @Default(MangaStatus.initial) MangaStatus status,
    @Default(MangaModel(status: 0, results: [])) MangaModel mangas,
    @Default(false) bool hasReachedMax,
  }) = _MangaState;

  factory MangaState.fromJson(Map<String, dynamic> json) => _$MangaStateFromJson(json);
}
