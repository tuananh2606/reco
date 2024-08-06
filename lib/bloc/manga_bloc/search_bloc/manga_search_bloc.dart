import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reco/data/models/manga/manga_model.dart';
import 'package:reco/data/repository/manga_repo.dart';

part 'manga_search_bloc.freezed.dart';
part 'manga_search_bloc.g.dart';
part 'manga_search_event.dart';
part 'manga_search_state.dart';

class MangaSearchBloc extends Bloc<MangaSearchEvent, MangaSearchState> {
  MangaSearchBloc() : super(const MangaSearchState()) {
    on<_SearchManga>(mangaSearchEvent);
  }

  FutureOr<void> mangaSearchEvent(MangaSearchEvent event, Emitter<MangaSearchState> emit) async {
    emit(
      state.copyWith(
        status: MangaSearchStatus.loading,
      ),
    );
    try {
      final res = await MangaRepository.searchManga(event.query);
      emit(state.copyWith(status: MangaSearchStatus.success, response: res));
    } catch (error) {
      emit(
        state.copyWith(
          status: MangaSearchStatus.error,
        ),
      );
      throw Exception(error);
    }
  }
}
