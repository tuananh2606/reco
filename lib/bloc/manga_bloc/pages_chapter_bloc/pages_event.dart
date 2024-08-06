part of 'pages_bloc.dart';

@freezed
class MangaPagesEvent with _$MangaPagesEvent {
  const factory MangaPagesEvent.getPagesManga(String id) = _GetPagesManga;
}
