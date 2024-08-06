// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourite_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavouriteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFavouriteItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFavouriteItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFavouriteItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchFavouriteItems value) fetchFavouriteItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchFavouriteItems value)? fetchFavouriteItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchFavouriteItems value)? fetchFavouriteItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteEventCopyWith<$Res> {
  factory $FavouriteEventCopyWith(
          FavouriteEvent value, $Res Function(FavouriteEvent) then) =
      _$FavouriteEventCopyWithImpl<$Res, FavouriteEvent>;
}

/// @nodoc
class _$FavouriteEventCopyWithImpl<$Res, $Val extends FavouriteEvent>
    implements $FavouriteEventCopyWith<$Res> {
  _$FavouriteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchFavouriteItemsImplCopyWith<$Res> {
  factory _$$FetchFavouriteItemsImplCopyWith(_$FetchFavouriteItemsImpl value,
          $Res Function(_$FetchFavouriteItemsImpl) then) =
      __$$FetchFavouriteItemsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchFavouriteItemsImplCopyWithImpl<$Res>
    extends _$FavouriteEventCopyWithImpl<$Res, _$FetchFavouriteItemsImpl>
    implements _$$FetchFavouriteItemsImplCopyWith<$Res> {
  __$$FetchFavouriteItemsImplCopyWithImpl(_$FetchFavouriteItemsImpl _value,
      $Res Function(_$FetchFavouriteItemsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchFavouriteItemsImpl implements _FetchFavouriteItems {
  const _$FetchFavouriteItemsImpl();

  @override
  String toString() {
    return 'FavouriteEvent.fetchFavouriteItems()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchFavouriteItemsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFavouriteItems,
  }) {
    return fetchFavouriteItems();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFavouriteItems,
  }) {
    return fetchFavouriteItems?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFavouriteItems,
    required TResult orElse(),
  }) {
    if (fetchFavouriteItems != null) {
      return fetchFavouriteItems();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchFavouriteItems value) fetchFavouriteItems,
  }) {
    return fetchFavouriteItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchFavouriteItems value)? fetchFavouriteItems,
  }) {
    return fetchFavouriteItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchFavouriteItems value)? fetchFavouriteItems,
    required TResult orElse(),
  }) {
    if (fetchFavouriteItems != null) {
      return fetchFavouriteItems(this);
    }
    return orElse();
  }
}

abstract class _FetchFavouriteItems implements FavouriteEvent {
  const factory _FetchFavouriteItems() = _$FetchFavouriteItemsImpl;
}

FavouriteState _$FavouriteStateFromJson(Map<String, dynamic> json) {
  return _FavouriteState.fromJson(json);
}

/// @nodoc
mixin _$FavouriteState {
  FavouriteStatus get status => throw _privateConstructorUsedError;
  List<FavouriteModel> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavouriteStateCopyWith<FavouriteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteStateCopyWith<$Res> {
  factory $FavouriteStateCopyWith(
          FavouriteState value, $Res Function(FavouriteState) then) =
      _$FavouriteStateCopyWithImpl<$Res, FavouriteState>;
  @useResult
  $Res call({FavouriteStatus status, List<FavouriteModel> results});
}

/// @nodoc
class _$FavouriteStateCopyWithImpl<$Res, $Val extends FavouriteState>
    implements $FavouriteStateCopyWith<$Res> {
  _$FavouriteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FavouriteStatus,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<FavouriteModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavouriteStateImplCopyWith<$Res>
    implements $FavouriteStateCopyWith<$Res> {
  factory _$$FavouriteStateImplCopyWith(_$FavouriteStateImpl value,
          $Res Function(_$FavouriteStateImpl) then) =
      __$$FavouriteStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FavouriteStatus status, List<FavouriteModel> results});
}

/// @nodoc
class __$$FavouriteStateImplCopyWithImpl<$Res>
    extends _$FavouriteStateCopyWithImpl<$Res, _$FavouriteStateImpl>
    implements _$$FavouriteStateImplCopyWith<$Res> {
  __$$FavouriteStateImplCopyWithImpl(
      _$FavouriteStateImpl _value, $Res Function(_$FavouriteStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? results = null,
  }) {
    return _then(_$FavouriteStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FavouriteStatus,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<FavouriteModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavouriteStateImpl implements _FavouriteState {
  _$FavouriteStateImpl(
      {this.status = FavouriteStatus.initial,
      final List<FavouriteModel> results = const []})
      : _results = results;

  factory _$FavouriteStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavouriteStateImplFromJson(json);

  @override
  @JsonKey()
  final FavouriteStatus status;
  final List<FavouriteModel> _results;
  @override
  @JsonKey()
  List<FavouriteModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'FavouriteState(status: $status, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouriteStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouriteStateImplCopyWith<_$FavouriteStateImpl> get copyWith =>
      __$$FavouriteStateImplCopyWithImpl<_$FavouriteStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavouriteStateImplToJson(
      this,
    );
  }
}

abstract class _FavouriteState implements FavouriteState {
  factory _FavouriteState(
      {final FavouriteStatus status,
      final List<FavouriteModel> results}) = _$FavouriteStateImpl;

  factory _FavouriteState.fromJson(Map<String, dynamic> json) =
      _$FavouriteStateImpl.fromJson;

  @override
  FavouriteStatus get status;
  @override
  List<FavouriteModel> get results;
  @override
  @JsonKey(ignore: true)
  _$$FavouriteStateImplCopyWith<_$FavouriteStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
