part of 'manga_bloc.dart';

@immutable
abstract class MangaState {}

abstract class MangaActionState extends MangaState {}

class MangaInitial extends MangaState {}

class MangaFetchingLoadingState extends MangaState {}

class MangaFetchingErrorState extends MangaState {}

//Manga Fetch Event
class MangaFetchingSuccessfulState extends MangaState {
  MangaFetchingSuccessfulState({
    required this.manga,
  });
  final MangaModel manga;
}

//Manga Search Event
class MangaSearchSuccessfulState extends MangaState {
  MangaSearchSuccessfulState({
    required this.manga,
  });
  final MangaModel manga;
}

//Manga Details Event
class MangaDetailsSuccessfulState extends MangaState {
  MangaDetailsSuccessfulState({
    required this.manga,
  });
  final MangaDetails manga;
}

//Manga Get Chapter Pages Event
class MangaGetChapterPagesSuccessfulState extends MangaState {
  MangaGetChapterPagesSuccessfulState({
    required this.pages,
  });
  final PageModel pages;
}
