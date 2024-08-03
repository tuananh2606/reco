// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manga_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MangaEvent {
  String get type => throw _privateConstructorUsedError;
  String get page => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type, String page) fetchManga,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type, String page)? fetchManga,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type, String page)? fetchManga,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchManga value) fetchManga,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchManga value)? fetchManga,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchManga value)? fetchManga,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MangaEventCopyWith<MangaEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaEventCopyWith<$Res> {
  factory $MangaEventCopyWith(
          MangaEvent value, $Res Function(MangaEvent) then) =
      _$MangaEventCopyWithImpl<$Res, MangaEvent>;
  @useResult
  $Res call({String type, String page});
}

/// @nodoc
class _$MangaEventCopyWithImpl<$Res, $Val extends MangaEvent>
    implements $MangaEventCopyWith<$Res> {
  _$MangaEventCopyWithImpl(this._value, this._then);

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
abstract class _$$FetchMangaImplCopyWith<$Res>
    implements $MangaEventCopyWith<$Res> {
  factory _$$FetchMangaImplCopyWith(
          _$FetchMangaImpl value, $Res Function(_$FetchMangaImpl) then) =
      __$$FetchMangaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String page});
}

/// @nodoc
class __$$FetchMangaImplCopyWithImpl<$Res>
    extends _$MangaEventCopyWithImpl<$Res, _$FetchMangaImpl>
    implements _$$FetchMangaImplCopyWith<$Res> {
  __$$FetchMangaImplCopyWithImpl(
      _$FetchMangaImpl _value, $Res Function(_$FetchMangaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? page = null,
  }) {
    return _then(_$FetchMangaImpl(
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

class _$FetchMangaImpl implements _FetchManga {
  const _$FetchMangaImpl(this.type, this.page);

  @override
  final String type;
  @override
  final String page;

  @override
  String toString() {
    return 'MangaEvent.fetchManga(type: $type, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchMangaImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchMangaImplCopyWith<_$FetchMangaImpl> get copyWith =>
      __$$FetchMangaImplCopyWithImpl<_$FetchMangaImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type, String page) fetchManga,
  }) {
    return fetchManga(type, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type, String page)? fetchManga,
  }) {
    return fetchManga?.call(type, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type, String page)? fetchManga,
    required TResult orElse(),
  }) {
    if (fetchManga != null) {
      return fetchManga(type, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchManga value) fetchManga,
  }) {
    return fetchManga(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchManga value)? fetchManga,
  }) {
    return fetchManga?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchManga value)? fetchManga,
    required TResult orElse(),
  }) {
    if (fetchManga != null) {
      return fetchManga(this);
    }
    return orElse();
  }
}

abstract class _FetchManga implements MangaEvent {
  const factory _FetchManga(final String type, final String page) =
      _$FetchMangaImpl;

  @override
  String get type;
  @override
  String get page;
  @override
  @JsonKey(ignore: true)
  _$$FetchMangaImplCopyWith<_$FetchMangaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MangaState _$MangaStateFromJson(Map<String, dynamic> json) {
  return _MangaState.fromJson(json);
}

/// @nodoc
mixin _$MangaState {
  MangaStatus get status => throw _privateConstructorUsedError;
  MangaModel get mangas => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MangaStateCopyWith<MangaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaStateCopyWith<$Res> {
  factory $MangaStateCopyWith(
          MangaState value, $Res Function(MangaState) then) =
      _$MangaStateCopyWithImpl<$Res, MangaState>;
  @useResult
  $Res call({MangaStatus status, MangaModel mangas, bool hasReachedMax});

  $MangaModelCopyWith<$Res> get mangas;
}

/// @nodoc
class _$MangaStateCopyWithImpl<$Res, $Val extends MangaState>
    implements $MangaStateCopyWith<$Res> {
  _$MangaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? mangas = null,
    Object? hasReachedMax = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MangaStatus,
      mangas: null == mangas
          ? _value.mangas
          : mangas // ignore: cast_nullable_to_non_nullable
              as MangaModel,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MangaModelCopyWith<$Res> get mangas {
    return $MangaModelCopyWith<$Res>(_value.mangas, (value) {
      return _then(_value.copyWith(mangas: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MangaStateImplCopyWith<$Res>
    implements $MangaStateCopyWith<$Res> {
  factory _$$MangaStateImplCopyWith(
          _$MangaStateImpl value, $Res Function(_$MangaStateImpl) then) =
      __$$MangaStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MangaStatus status, MangaModel mangas, bool hasReachedMax});

  @override
  $MangaModelCopyWith<$Res> get mangas;
}

/// @nodoc
class __$$MangaStateImplCopyWithImpl<$Res>
    extends _$MangaStateCopyWithImpl<$Res, _$MangaStateImpl>
    implements _$$MangaStateImplCopyWith<$Res> {
  __$$MangaStateImplCopyWithImpl(
      _$MangaStateImpl _value, $Res Function(_$MangaStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? mangas = null,
    Object? hasReachedMax = null,
  }) {
    return _then(_$MangaStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MangaStatus,
      mangas: null == mangas
          ? _value.mangas
          : mangas // ignore: cast_nullable_to_non_nullable
              as MangaModel,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MangaStateImpl implements _MangaState {
  const _$MangaStateImpl(
      {this.status = MangaStatus.initial,
      this.mangas = const MangaModel(status: 0, results: []),
      this.hasReachedMax = false});

  factory _$MangaStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$MangaStateImplFromJson(json);

  @override
  @JsonKey()
  final MangaStatus status;
  @override
  @JsonKey()
  final MangaModel mangas;
  @override
  @JsonKey()
  final bool hasReachedMax;

  @override
  String toString() {
    return 'MangaState(status: $status, mangas: $mangas, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.mangas, mangas) || other.mangas == mangas) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, mangas, hasReachedMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MangaStateImplCopyWith<_$MangaStateImpl> get copyWith =>
      __$$MangaStateImplCopyWithImpl<_$MangaStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MangaStateImplToJson(
      this,
    );
  }
}

abstract class _MangaState implements MangaState {
  const factory _MangaState(
      {final MangaStatus status,
      final MangaModel mangas,
      final bool hasReachedMax}) = _$MangaStateImpl;

  factory _MangaState.fromJson(Map<String, dynamic> json) =
      _$MangaStateImpl.fromJson;

  @override
  MangaStatus get status;
  @override
  MangaModel get mangas;
  @override
  bool get hasReachedMax;
  @override
  @JsonKey(ignore: true)
  _$$MangaStateImplCopyWith<_$MangaStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
