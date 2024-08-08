part of 'anilist_bloc.dart';

enum AnilistStatus {
  initial,
  loading,
  success,
  error;

  bool get isInitial => this == AnilistStatus.initial;
  bool get isLoading => this == AnilistStatus.loading;
  bool get isSuccess => this == AnilistStatus.success;
  bool get isError => this == AnilistStatus.error;
}

@freezed
class AnilistState with _$AnilistState {
  const factory AnilistState({
    @Default(AnilistStatus.initial) AnilistStatus status,
    AnilistModel? results,
  }) = _AnilistState;

  factory AnilistState.fromJson(Map<String, dynamic> json) => _$AnilistStateFromJson(json);
}
