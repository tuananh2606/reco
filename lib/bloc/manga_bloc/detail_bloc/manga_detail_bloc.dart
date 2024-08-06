import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reco/data/models/manga/manga_model.dart';
import 'package:reco/data/repository/manga_repo.dart';

part 'manga_detail_bloc.freezed.dart';
part 'manga_detail_bloc.g.dart';
part 'manga_detail_event.dart';
part 'manga_detail_state.dart';

class MangaDetailBloc extends Bloc<MangaDetailEvent, MangaDetailState> {
  MangaDetailBloc() : super(const MangaDetailState()) {
    on<_GetDetailManga>(mangaDetailsEvent);
  }

  FutureOr<void> mangaDetailsEvent(_GetDetailManga event, Emitter<MangaDetailState> emit) async {
    emit(state.copyWith(status: MangaDetailStatus.loading));
    try {
      final res = await MangaRepository.getInfoManga(event.id);
      if (res.status == 200) {
        emit(state.copyWith(status: MangaDetailStatus.success, response: res));
      }
    } catch (error) {
      emit(state.copyWith(status: MangaDetailStatus.error));
      throw Exception(error);
    }
  }

  // FutureOr<void> mangaGetChapterPagesEvent(_GetPagesManga event, Emitter<MangaState> emit) async {
  //   emit(MangaFetchingLoadingState());
  //   try {
  //     final page = await MangaRepository.getPagesChapterManga(event.id);
  //     emit(MangaGetChapterPagesSuccessfulState(pages: page));
  //   } catch (error) {
  //     emit(MangaFetchingErrorState());
  //     throw Exception(error);
  //   }
  // }
}
