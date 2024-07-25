part of 'manga_bloc.dart';

@immutable
abstract class MangaState {}

abstract class MangaActionState extends MangaState {}

class MangaInitial extends MangaState {}

class MangaFetchingLoadingState extends MangaState {}

class MangaFetchingErrorState extends MangaState {}

class MangaFetchingSuccessfulState extends MangaState {
  MangaFetchingSuccessfulState({
    required this.manga,
  });
  final MangaModel manga;
}

class MangaAdditionSuccessState extends MangaActionState {}

class MangaAdditionErrorState extends MangaActionState {}
