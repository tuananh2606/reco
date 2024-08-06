import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reco/data/models/manga/manga_model.dart';
import 'package:reco/data/repository/manga_repo.dart';

part 'manga_bloc.freezed.dart';
part 'manga_bloc.g.dart';
part 'manga_event.dart';
part 'manga_state.dart';

class MangaBloc extends Bloc<MangaEvent, MangaState> {
  MangaBloc() : super(const MangaState()) {
    // on<MangaInitialFetchEvent>(mangaInitialFetchEvent);
    // on<MangaSearchEvent>(mangaSearchEvent);
    // on<MangaDetailsEvent>(mangaDetailsEvent);
    // on<MangaGetChapterPagesEvent>(mangaGetChapterPagesEvent);
    on<_FetchManga>(mangaFetchEvent);
  }

  FutureOr<void> mangaFetchEvent(_FetchManga event, Emitter<MangaState> emit) async {
    if (event.type.isEmpty) {
      return;
    }
    try {
      if (state.status == MangaStatus.initial) {
        final mangas = await MangaRepository.fetchManga(event.type, '1');
        return emit(
          state.copyWith(
            status: MangaStatus.success,
            mangas: mangas,
            hasReachedMax: false,
          ),
        );
      }
      // emit(state.copyWith(status: MangaStatus.loading));
      final mangas = await MangaRepository.fetchManga(event.type, event.page);
      emit(
        mangas.results.isEmpty
            ? state.copyWith(hasReachedMax: true)
            : state.copyWith(
                status: MangaStatus.success,
                mangas: mangas.copyWith(
                  status: mangas.status,
                  results: List.of(state.mangas.results)..addAll(mangas.results),
                ),
                hasReachedMax: false,
              ),
      );
    } on Exception catch (error, stackTrace) {
      // notify the bloc observer
      addError(error, stackTrace);
      emit(state.copyWith(status: MangaStatus.error));
    }
  }

  // FutureOr<void> mangaSearchEvent(MangaSearchEvent event, Emitter<MangaState> emit) async {
  //   emit(MangaFetchingLoadingState());
  //   try {
  //     final manga = await MangaRepository.searchManga(event.query);
  //     emit(MangaSearchSuccessfulState(manga: manga));
  //   } catch (error) {
  //     emit(MangaFetchingErrorState());
  //     throw Exception(error);
  //   }
  // }
}
