// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manga_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MangaDetailEvent {
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getDetailManga,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getDetailManga,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getDetailManga,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDetailManga value) getDetailManga,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDetailManga value)? getDetailManga,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDetailManga value)? getDetailManga,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MangaDetailEventCopyWith<MangaDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaDetailEventCopyWith<$Res> {
  factory $MangaDetailEventCopyWith(
          MangaDetailEvent value, $Res Function(MangaDetailEvent) then) =
      _$MangaDetailEventCopyWithImpl<$Res, MangaDetailEvent>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$MangaDetailEventCopyWithImpl<$Res, $Val extends MangaDetailEvent>
    implements $MangaDetailEventCopyWith<$Res> {
  _$MangaDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetDetailMangaImplCopyWith<$Res>
    implements $MangaDetailEventCopyWith<$Res> {
  factory _$$GetDetailMangaImplCopyWith(_$GetDetailMangaImpl value,
          $Res Function(_$GetDetailMangaImpl) then) =
      __$$GetDetailMangaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetDetailMangaImplCopyWithImpl<$Res>
    extends _$MangaDetailEventCopyWithImpl<$Res, _$GetDetailMangaImpl>
    implements _$$GetDetailMangaImplCopyWith<$Res> {
  __$$GetDetailMangaImplCopyWithImpl(
      _$GetDetailMangaImpl _value, $Res Function(_$GetDetailMangaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetDetailMangaImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetDetailMangaImpl implements _GetDetailManga {
  const _$GetDetailMangaImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'MangaDetailEvent.getDetailManga(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDetailMangaImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDetailMangaImplCopyWith<_$GetDetailMangaImpl> get copyWith =>
      __$$GetDetailMangaImplCopyWithImpl<_$GetDetailMangaImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getDetailManga,
  }) {
    return getDetailManga(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getDetailManga,
  }) {
    return getDetailManga?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getDetailManga,
    required TResult orElse(),
  }) {
    if (getDetailManga != null) {
      return getDetailManga(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDetailManga value) getDetailManga,
  }) {
    return getDetailManga(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDetailManga value)? getDetailManga,
  }) {
    return getDetailManga?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDetailManga value)? getDetailManga,
    required TResult orElse(),
  }) {
    if (getDetailManga != null) {
      return getDetailManga(this);
    }
    return orElse();
  }
}

abstract class _GetDetailManga implements MangaDetailEvent {
  const factory _GetDetailManga(final String id) = _$GetDetailMangaImpl;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$GetDetailMangaImplCopyWith<_$GetDetailMangaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MangaDetailState _$MangaDetailStateFromJson(Map<String, dynamic> json) {
  return _MangaDetailState.fromJson(json);
}

/// @nodoc
mixin _$MangaDetailState {
  MangaDetailStatus get status => throw _privateConstructorUsedError;
  MangaDetails? get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MangaDetailStateCopyWith<MangaDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaDetailStateCopyWith<$Res> {
  factory $MangaDetailStateCopyWith(
          MangaDetailState value, $Res Function(MangaDetailState) then) =
      _$MangaDetailStateCopyWithImpl<$Res, MangaDetailState>;
  @useResult
  $Res call({MangaDetailStatus status, MangaDetails? response});

  $MangaDetailsCopyWith<$Res>? get response;
}

/// @nodoc
class _$MangaDetailStateCopyWithImpl<$Res, $Val extends MangaDetailState>
    implements $MangaDetailStateCopyWith<$Res> {
  _$MangaDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? response = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MangaDetailStatus,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as MangaDetails?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MangaDetailsCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $MangaDetailsCopyWith<$Res>(_value.response!, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MangaDetailStateImplCopyWith<$Res>
    implements $MangaDetailStateCopyWith<$Res> {
  factory _$$MangaDetailStateImplCopyWith(_$MangaDetailStateImpl value,
          $Res Function(_$MangaDetailStateImpl) then) =
      __$$MangaDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MangaDetailStatus status, MangaDetails? response});

  @override
  $MangaDetailsCopyWith<$Res>? get response;
}

/// @nodoc
class __$$MangaDetailStateImplCopyWithImpl<$Res>
    extends _$MangaDetailStateCopyWithImpl<$Res, _$MangaDetailStateImpl>
    implements _$$MangaDetailStateImplCopyWith<$Res> {
  __$$MangaDetailStateImplCopyWithImpl(_$MangaDetailStateImpl _value,
      $Res Function(_$MangaDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? response = freezed,
  }) {
    return _then(_$MangaDetailStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MangaDetailStatus,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as MangaDetails?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MangaDetailStateImpl implements _MangaDetailState {
  const _$MangaDetailStateImpl(
      {this.status = MangaDetailStatus.initial, this.response});

  factory _$MangaDetailStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$MangaDetailStateImplFromJson(json);

  @override
  @JsonKey()
  final MangaDetailStatus status;
  @override
  final MangaDetails? response;

  @override
  String toString() {
    return 'MangaDetailState(status: $status, response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaDetailStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MangaDetailStateImplCopyWith<_$MangaDetailStateImpl> get copyWith =>
      __$$MangaDetailStateImplCopyWithImpl<_$MangaDetailStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MangaDetailStateImplToJson(
      this,
    );
  }
}

abstract class _MangaDetailState implements MangaDetailState {
  const factory _MangaDetailState(
      {final MangaDetailStatus status,
      final MangaDetails? response}) = _$MangaDetailStateImpl;

  factory _MangaDetailState.fromJson(Map<String, dynamic> json) =
      _$MangaDetailStateImpl.fromJson;

  @override
  MangaDetailStatus get status;
  @override
  MangaDetails? get response;
  @override
  @JsonKey(ignore: true)
  _$$MangaDetailStateImplCopyWith<_$MangaDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
