part of 'manga_detail_bloc.dart';

@freezed
class MangaDetailEvent with _$MangaDetailEvent {
  const factory MangaDetailEvent.getDetailManga(String id) = _GetDetailManga;
}
