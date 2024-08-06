part of 'favourite_bloc.dart';

enum FavouriteStatus {
  initial,
  loading,
  success,
  error;

  bool get isInitial => this == FavouriteStatus.initial;
  bool get isLoading => this == FavouriteStatus.loading;
  bool get isSuccess => this == FavouriteStatus.success;
  bool get isError => this == FavouriteStatus.error;
}

@freezed
class FavouriteState with _$FavouriteState {
  factory FavouriteState({
    @Default(FavouriteStatus.initial) FavouriteStatus status,
    @Default([]) List<FavouriteModel> results,
  }) = _FavouriteState;

  factory FavouriteState.fromJson(Map<String, dynamic> json) => _$FavouriteStateFromJson(json);
}
