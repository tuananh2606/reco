import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reco/data/models/manga/manga_model.dart';
import 'package:reco/data/repository/manga_repo.dart';

part 'pages_bloc.freezed.dart';
part 'pages_bloc.g.dart';
part 'pages_event.dart';
part 'pages_state.dart';

class MangaPagesBloc extends Bloc<MangaPagesEvent, MangaPagesState> {
  MangaPagesBloc() : super(const MangaPagesState()) {
    on<_GetPagesManga>(mangaFetchEvent);
  }

  FutureOr<void> mangaFetchEvent(_GetPagesManga event, Emitter<MangaPagesState> emit) async {
    emit(state.copyWith(status: MangaPagesStatus.loading));
    try {
      final res = await MangaRepository.getPagesChapterManga(event.id);
      emit(
        state.copyWith(
          status: MangaPagesStatus.success,
          response: res,
        ),
      );
    } on Exception catch (error, stackTrace) {
      // notify the bloc observer
      addError(error, stackTrace);
      emit(state.copyWith(status: MangaPagesStatus.error));
    }
  }
}
