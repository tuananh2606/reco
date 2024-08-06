// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manga_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MangaSearchEvent {
  String get query => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchManga,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchManga,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchManga,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchManga value) searchManga,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchManga value)? searchManga,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchManga value)? searchManga,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MangaSearchEventCopyWith<MangaSearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaSearchEventCopyWith<$Res> {
  factory $MangaSearchEventCopyWith(
          MangaSearchEvent value, $Res Function(MangaSearchEvent) then) =
      _$MangaSearchEventCopyWithImpl<$Res, MangaSearchEvent>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class _$MangaSearchEventCopyWithImpl<$Res, $Val extends MangaSearchEvent>
    implements $MangaSearchEventCopyWith<$Res> {
  _$MangaSearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchMangaImplCopyWith<$Res>
    implements $MangaSearchEventCopyWith<$Res> {
  factory _$$SearchMangaImplCopyWith(
          _$SearchMangaImpl value, $Res Function(_$SearchMangaImpl) then) =
      __$$SearchMangaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchMangaImplCopyWithImpl<$Res>
    extends _$MangaSearchEventCopyWithImpl<$Res, _$SearchMangaImpl>
    implements _$$SearchMangaImplCopyWith<$Res> {
  __$$SearchMangaImplCopyWithImpl(
      _$SearchMangaImpl _value, $Res Function(_$SearchMangaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchMangaImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchMangaImpl implements _SearchManga {
  const _$SearchMangaImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'MangaSearchEvent.searchManga(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchMangaImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchMangaImplCopyWith<_$SearchMangaImpl> get copyWith =>
      __$$SearchMangaImplCopyWithImpl<_$SearchMangaImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchManga,
  }) {
    return searchManga(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchManga,
  }) {
    return searchManga?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchManga,
    required TResult orElse(),
  }) {
    if (searchManga != null) {
      return searchManga(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchManga value) searchManga,
  }) {
    return searchManga(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchManga value)? searchManga,
  }) {
    return searchManga?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchManga value)? searchManga,
    required TResult orElse(),
  }) {
    if (searchManga != null) {
      return searchManga(this);
    }
    return orElse();
  }
}

abstract class _SearchManga implements MangaSearchEvent {
  const factory _SearchManga(final String query) = _$SearchMangaImpl;

  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$SearchMangaImplCopyWith<_$SearchMangaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MangaSearchState _$MangaSearchStateFromJson(Map<String, dynamic> json) {
  return _MangaSearchState.fromJson(json);
}

/// @nodoc
mixin _$MangaSearchState {
  MangaSearchStatus get status => throw _privateConstructorUsedError;
  MangaModel get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MangaSearchStateCopyWith<MangaSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaSearchStateCopyWith<$Res> {
  factory $MangaSearchStateCopyWith(
          MangaSearchState value, $Res Function(MangaSearchState) then) =
      _$MangaSearchStateCopyWithImpl<$Res, MangaSearchState>;
  @useResult
  $Res call({MangaSearchStatus status, MangaModel response});

  $MangaModelCopyWith<$Res> get response;
}

/// @nodoc
class _$MangaSearchStateCopyWithImpl<$Res, $Val extends MangaSearchState>
    implements $MangaSearchStateCopyWith<$Res> {
  _$MangaSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? response = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MangaSearchStatus,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as MangaModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MangaModelCopyWith<$Res> get response {
    return $MangaModelCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MangaSearchStateImplCopyWith<$Res>
    implements $MangaSearchStateCopyWith<$Res> {
  factory _$$MangaSearchStateImplCopyWith(_$MangaSearchStateImpl value,
          $Res Function(_$MangaSearchStateImpl) then) =
      __$$MangaSearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MangaSearchStatus status, MangaModel response});

  @override
  $MangaModelCopyWith<$Res> get response;
}

/// @nodoc
class __$$MangaSearchStateImplCopyWithImpl<$Res>
    extends _$MangaSearchStateCopyWithImpl<$Res, _$MangaSearchStateImpl>
    implements _$$MangaSearchStateImplCopyWith<$Res> {
  __$$MangaSearchStateImplCopyWithImpl(_$MangaSearchStateImpl _value,
      $Res Function(_$MangaSearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? response = null,
  }) {
    return _then(_$MangaSearchStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MangaSearchStatus,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as MangaModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MangaSearchStateImpl implements _MangaSearchState {
  const _$MangaSearchStateImpl(
      {this.status = MangaSearchStatus.initial,
      this.response = const MangaModel(status: 0, results: [])});

  factory _$MangaSearchStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$MangaSearchStateImplFromJson(json);

  @override
  @JsonKey()
  final MangaSearchStatus status;
  @override
  @JsonKey()
  final MangaModel response;

  @override
  String toString() {
    return 'MangaSearchState(status: $status, response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaSearchStateImpl &&
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
  _$$MangaSearchStateImplCopyWith<_$MangaSearchStateImpl> get copyWith =>
      __$$MangaSearchStateImplCopyWithImpl<_$MangaSearchStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MangaSearchStateImplToJson(
      this,
    );
  }
}

abstract class _MangaSearchState implements MangaSearchState {
  const factory _MangaSearchState(
      {final MangaSearchStatus status,
      final MangaModel response}) = _$MangaSearchStateImpl;

  factory _MangaSearchState.fromJson(Map<String, dynamic> json) =
      _$MangaSearchStateImpl.fromJson;

  @override
  MangaSearchStatus get status;
  @override
  MangaModel get response;
  @override
  @JsonKey(ignore: true)
  _$$MangaSearchStateImplCopyWith<_$MangaSearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
