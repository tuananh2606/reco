import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reco/data/models/meta/anilist/anilist_model.dart';
import 'package:reco/data/repository/meta_repo.dart';

part 'anilist_bloc.freezed.dart';
part 'anilist_bloc.g.dart';
part 'anilist_event.dart';
part 'anilist_state.dart';

class AnilistBloc extends Bloc<AnilistEvent, AnilistState> {
  AnilistBloc() : super(const AnilistState()) {
    // on<MangaInitialFetchEvent>(mangaInitialFetchEvent);
    // on<MangaSearchEvent>(mangaSearchEvent);
    // on<MangaDetailsEvent>(mangaDetailsEvent);
    // on<MangaGetChapterPagesEvent>(mangaGetChapterPagesEvent);
    on<_FetchAnilist>(mangaFetchEvent);
  }

  FutureOr<void> mangaFetchEvent(_FetchAnilist event, Emitter<AnilistState> emit) async {
    if (event.type.isEmpty) {
      return;
    }
    try {
      // if (state.status == MangaStatus.initial) {
      //   final mangas = await MangaRepository.fetchManga(event.type, '1');
      //   return emit(
      //     state.copyWith(
      //       status: MangaStatus.success,
      //       mangas: mangas,
      //       hasReachedMax: false,
      //     ),
      //   );
      // }
      emit(state.copyWith(status: AnilistStatus.loading));
      final res = await Anilist.getListManga(event.type, event.page);
      emit(state.copyWith(status: AnilistStatus.success, results: res));
    } on Exception catch (error, stackTrace) {
      // notify the bloc observer
      addError(error, stackTrace);
      emit(state.copyWith(status: AnilistStatus.error));
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
