part of 'favourite_bloc.dart';

@freezed
class FavouriteEvent with _$FavouriteEvent {
  const factory FavouriteEvent.fetchFavouriteItems() = _FetchFavouriteItems;
}
