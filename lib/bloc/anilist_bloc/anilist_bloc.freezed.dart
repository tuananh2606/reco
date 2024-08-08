// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anilist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AnilistEvent {
  String get type => throw _privateConstructorUsedError;
  String get page => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type, String page) fetchAnilist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type, String page)? fetchAnilist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type, String page)? fetchAnilist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAnilist value) fetchAnilist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAnilist value)? fetchAnilist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAnilist value)? fetchAnilist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnilistEventCopyWith<AnilistEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnilistEventCopyWith<$Res> {
  factory $AnilistEventCopyWith(
          AnilistEvent value, $Res Function(AnilistEvent) then) =
      _$AnilistEventCopyWithImpl<$Res, AnilistEvent>;
  @useResult
  $Res call({String type, String page});
}

/// @nodoc
class _$AnilistEventCopyWithImpl<$Res, $Val extends AnilistEvent>
    implements $AnilistEventCopyWith<$Res> {
  _$AnilistEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchAnilistImplCopyWith<$Res>
    implements $AnilistEventCopyWith<$Res> {
  factory _$$FetchAnilistImplCopyWith(
          _$FetchAnilistImpl value, $Res Function(_$FetchAnilistImpl) then) =
      __$$FetchAnilistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String page});
}

/// @nodoc
class __$$FetchAnilistImplCopyWithImpl<$Res>
    extends _$AnilistEventCopyWithImpl<$Res, _$FetchAnilistImpl>
    implements _$$FetchAnilistImplCopyWith<$Res> {
  __$$FetchAnilistImplCopyWithImpl(
      _$FetchAnilistImpl _value, $Res Function(_$FetchAnilistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? page = null,
  }) {
    return _then(_$FetchAnilistImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchAnilistImpl implements _FetchAnilist {
  const _$FetchAnilistImpl(this.type, this.page);

  @override
  final String type;
  @override
  final String page;

  @override
  String toString() {
    return 'AnilistEvent.fetchAnilist(type: $type, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAnilistImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAnilistImplCopyWith<_$FetchAnilistImpl> get copyWith =>
      __$$FetchAnilistImplCopyWithImpl<_$FetchAnilistImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type, String page) fetchAnilist,
  }) {
    return fetchAnilist(type, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type, String page)? fetchAnilist,
  }) {
    return fetchAnilist?.call(type, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type, String page)? fetchAnilist,
    required TResult orElse(),
  }) {
    if (fetchAnilist != null) {
      return fetchAnilist(type, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAnilist value) fetchAnilist,
  }) {
    return fetchAnilist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAnilist value)? fetchAnilist,
  }) {
    return fetchAnilist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAnilist value)? fetchAnilist,
    required TResult orElse(),
  }) {
    if (fetchAnilist != null) {
      return fetchAnilist(this);
    }
    return orElse();
  }
}

abstract class _FetchAnilist implements AnilistEvent {
  const factory _FetchAnilist(final String type, final String page) =
      _$FetchAnilistImpl;

  @override
  String get type;
  @override
  String get page;
  @override
  @JsonKey(ignore: true)
  _$$FetchAnilistImplCopyWith<_$FetchAnilistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AnilistState _$AnilistStateFromJson(Map<String, dynamic> json) {
  return _AnilistState.fromJson(json);
}

/// @nodoc
mixin _$AnilistState {
  AnilistStatus get status => throw _privateConstructorUsedError;
  AnilistModel? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnilistStateCopyWith<AnilistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnilistStateCopyWith<$Res> {
  factory $AnilistStateCopyWith(
          AnilistState value, $Res Function(AnilistState) then) =
      _$AnilistStateCopyWithImpl<$Res, AnilistState>;
  @useResult
  $Res call({AnilistStatus status, AnilistModel? results});

  $AnilistModelCopyWith<$Res>? get results;
}

/// @nodoc
class _$AnilistStateCopyWithImpl<$Res, $Val extends AnilistState>
    implements $AnilistStateCopyWith<$Res> {
  _$AnilistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AnilistStatus,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as AnilistModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AnilistModelCopyWith<$Res>? get results {
    if (_value.results == null) {
      return null;
    }

    return $AnilistModelCopyWith<$Res>(_value.results!, (value) {
      return _then(_value.copyWith(results: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AnilistStateImplCopyWith<$Res>
    implements $AnilistStateCopyWith<$Res> {
  factory _$$AnilistStateImplCopyWith(
          _$AnilistStateImpl value, $Res Function(_$AnilistStateImpl) then) =
      __$$AnilistStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AnilistStatus status, AnilistModel? results});

  @override
  $AnilistModelCopyWith<$Res>? get results;
}

/// @nodoc
class __$$AnilistStateImplCopyWithImpl<$Res>
    extends _$AnilistStateCopyWithImpl<$Res, _$AnilistStateImpl>
    implements _$$AnilistStateImplCopyWith<$Res> {
  __$$AnilistStateImplCopyWithImpl(
      _$AnilistStateImpl _value, $Res Function(_$AnilistStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? results = freezed,
  }) {
    return _then(_$AnilistStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AnilistStatus,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as AnilistModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnilistStateImpl implements _AnilistState {
  const _$AnilistStateImpl({this.status = AnilistStatus.initial, this.results});

  factory _$AnilistStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnilistStateImplFromJson(json);

  @override
  @JsonKey()
  final AnilistStatus status;
  @override
  final AnilistModel? results;

  @override
  String toString() {
    return 'AnilistState(status: $status, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnilistStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.results, results) || other.results == results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, results);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnilistStateImplCopyWith<_$AnilistStateImpl> get copyWith =>
      __$$AnilistStateImplCopyWithImpl<_$AnilistStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnilistStateImplToJson(
      this,
    );
  }
}

abstract class _AnilistState implements AnilistState {
  const factory _AnilistState(
      {final AnilistStatus status,
      final AnilistModel? results}) = _$AnilistStateImpl;

  factory _AnilistState.fromJson(Map<String, dynamic> json) =
      _$AnilistStateImpl.fromJson;

  @override
  AnilistStatus get status;
  @override
  AnilistModel? get results;
  @override
  @JsonKey(ignore: true)
  _$$AnilistStateImplCopyWith<_$AnilistStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
