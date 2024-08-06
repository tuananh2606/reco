part of 'pages_bloc.dart';

enum MangaPagesStatus {
  initial,
  loading,
  success,
  error;

  bool get isInitial => this == MangaPagesStatus.initial;
  bool get isLoading => this == MangaPagesStatus.loading;
  bool get isSuccess => this == MangaPagesStatus.success;
  bool get isError => this == MangaPagesStatus.error;
}

@freezed
class MangaPagesState with _$MangaPagesState {
  const factory MangaPagesState({@Default(MangaPagesStatus.initial) MangaPagesStatus status, PageModel? response}) =
      _MangaPagesState;

  factory MangaPagesState.fromJson(Map<String, dynamic> json) => _$MangaPagesStateFromJson(json);
}
