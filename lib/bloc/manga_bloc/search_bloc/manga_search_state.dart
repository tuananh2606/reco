part of 'manga_search_bloc.dart';

enum MangaSearchStatus {
  initial,
  loading,
  success,
  error;

  bool get isInitial => this == MangaSearchStatus.initial;
  bool get isLoading => this == MangaSearchStatus.loading;
  bool get isSuccess => this == MangaSearchStatus.success;
  bool get isError => this == MangaSearchStatus.error;
}

@freezed
class MangaSearchState with _$MangaSearchState {
  const factory MangaSearchState({
    @Default(MangaSearchStatus.initial) MangaSearchStatus status,
    @Default(MangaModel(status: 0, results: [])) MangaModel response,
  }) = _MangaSearchState;

  factory MangaSearchState.fromJson(Map<String, dynamic> json) => _$MangaSearchStateFromJson(json);
}
