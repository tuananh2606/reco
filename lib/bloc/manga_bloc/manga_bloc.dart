import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reco/bloc/manga_bloc/data/models/manga_model.dart';
import 'package:reco/bloc/manga_bloc/data/repository/manga_repo.dart';

part 'manga_event.dart';
part 'manga_state.dart';

class MangaBloc extends Bloc<MangaEvent, MangaState> {
  MangaBloc() : super(MangaInitial()) {
    on<MangaInitialFetchEvent>(mangaInitialFetchEvent);
    on<MangaSearchEvent>(mangaSearchEvent);
    on<MangaDetailsEvent>(mangaDetailsEvent);
    on<MangaGetChapterPagesEvent>(mangaGetChapterPagesEvent);
  }

  FutureOr<void> mangaInitialFetchEvent(MangaInitialFetchEvent event, Emitter<MangaState> emit) async {
    emit(MangaFetchingLoadingState());
    final mangas = await MangaRepository.fetchManga();
    emit(MangaFetchingSuccessfulState(manga: mangas));
  }

  FutureOr<void> mangaSearchEvent(MangaSearchEvent event, Emitter<MangaState> emit) async {
    emit(MangaFetchingLoadingState());
    try {
      final manga = await MangaRepository.searchManga(event.query);
      emit(MangaSearchSuccessfulState(manga: manga));
    } catch (error) {
      emit(MangaFetchingErrorState());
      throw Exception(error);
    }
  }

  FutureOr<void> mangaDetailsEvent(MangaDetailsEvent event, Emitter<MangaState> emit) async {
    emit(MangaFetchingLoadingState());
    try {
      final manga = await MangaRepository.getInfoManga(event.id);
      emit(MangaDetailsSuccessfulState(manga: manga));
    } catch (error) {
      emit(MangaFetchingErrorState());
      throw Exception(error);
    }
  }

  FutureOr<void> mangaGetChapterPagesEvent(MangaGetChapterPagesEvent event, Emitter<MangaState> emit) async {
    emit(MangaFetchingLoadingState());
    try {
      final page = await MangaRepository.getPagesChapterManga(event.id);
      emit(MangaGetChapterPagesSuccessfulState(pages: page));
    } catch (error) {
      emit(MangaFetchingErrorState());
      throw Exception(error);
    }
  }
}
