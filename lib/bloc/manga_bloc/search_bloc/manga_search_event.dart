part of 'manga_search_bloc.dart';

@freezed
class MangaSearchEvent with _$MangaSearchEvent {
  const factory MangaSearchEvent.searchManga(String query) = _SearchManga;
}
