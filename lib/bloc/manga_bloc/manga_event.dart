part of 'manga_bloc.dart';

@freezed
class MangaEvent with _$MangaEvent {
  const factory MangaEvent.fetchManga(String type, String page) = _FetchManga;
}
