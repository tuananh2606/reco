part of 'manga_bloc.dart';

@immutable
abstract class MangaEvent {}

class MangaInitialFetchEvent extends MangaEvent {}

class MangaSearchEvent extends MangaEvent {
  MangaSearchEvent({required this.query});
  final String query;
}

class MangaDetailsEvent extends MangaEvent {
  MangaDetailsEvent({required this.id});
  final String id;
}

class MangaGetChapterPagesEvent extends MangaEvent {
  MangaGetChapterPagesEvent({required this.id});
  final String id;
}

class PullToRefreshEvent extends MangaEvent {}
