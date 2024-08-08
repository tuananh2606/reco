part of 'anilist_bloc.dart';

@freezed
class AnilistEvent with _$AnilistEvent {
  const factory AnilistEvent.fetchAnilist(String type, String page) = _FetchAnilist;
}
