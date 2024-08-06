import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reco/data/database/favourite_database.dart';
import 'package:reco/data/models/favourite/favourite_model.dart';

part 'favourite_bloc.freezed.dart';
part 'favourite_bloc.g.dart';
part 'favourite_event.dart';
part 'favourite_state.dart';

class FavouriteBloc extends Bloc<FavouriteEvent, FavouriteState> {
  FavouriteBloc() : super(FavouriteState()) {
    // on<FavouriteInitialFetchEvent>(FavouriteInitialFetchEvent);
    on<_FetchFavouriteItems>(favouriteFetchEvent);
  }

  FutureOr<void> favouriteFetchEvent(_FetchFavouriteItems event, Emitter<FavouriteState> emit) async {
    final FavouriteDatabase db = FavouriteDatabase.instance;
    emit(state.copyWith(status: FavouriteStatus.loading));
    try {
      final res = await db.listFavourite();
      emit(
        state.copyWith(
          status: FavouriteStatus.success,
          results: res,
        ),
      );
    } on Exception catch (error, stackTrace) {
      addError(error, stackTrace);
      emit(state.copyWith(status: FavouriteStatus.error));
    }
  }
}
