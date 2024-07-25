import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reco/AppLog.dart';
import 'package:reco/features/homepage/data/models/manga_model.dart';
import 'package:reco/features/homepage/data/repository/manga_repo.dart';

part 'manga_event.dart';
part 'manga_state.dart';

class MangaBloc extends Bloc<MangaEvent, MangaState> {
  MangaBloc() : super(MangaInitial()) {
    on<MangaInitialFetchEvent>(mangaInitialFetchEvent);
  }

  FutureOr<void> mangaInitialFetchEvent(MangaInitialFetchEvent event, Emitter<MangaState> emit) async {
    emit(MangaFetchingLoadingState());
    MangaModel mangas = await MangaRepository.fetchManga();
    AppLog.d(mangas.toString());
    //emit(MangaFetchingSuccessfulState(manga: mangas));
  }
}
