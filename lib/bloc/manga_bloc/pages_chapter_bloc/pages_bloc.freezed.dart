// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pages_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MangaPagesEvent {
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getPagesManga,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getPagesManga,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getPagesManga,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPagesManga value) getPagesManga,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPagesManga value)? getPagesManga,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPagesManga value)? getPagesManga,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MangaPagesEventCopyWith<MangaPagesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaPagesEventCopyWith<$Res> {
  factory $MangaPagesEventCopyWith(
          MangaPagesEvent value, $Res Function(MangaPagesEvent) then) =
      _$MangaPagesEventCopyWithImpl<$Res, MangaPagesEvent>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$MangaPagesEventCopyWithImpl<$Res, $Val extends MangaPagesEvent>
    implements $MangaPagesEventCopyWith<$Res> {
  _$MangaPagesEventCopyWithImpl(this._value, this._then);

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
abstract class _$$GetPagesMangaImplCopyWith<$Res>
    implements $MangaPagesEventCopyWith<$Res> {
  factory _$$GetPagesMangaImplCopyWith(
          _$GetPagesMangaImpl value, $Res Function(_$GetPagesMangaImpl) then) =
      __$$GetPagesMangaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetPagesMangaImplCopyWithImpl<$Res>
    extends _$MangaPagesEventCopyWithImpl<$Res, _$GetPagesMangaImpl>
    implements _$$GetPagesMangaImplCopyWith<$Res> {
  __$$GetPagesMangaImplCopyWithImpl(
      _$GetPagesMangaImpl _value, $Res Function(_$GetPagesMangaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetPagesMangaImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPagesMangaImpl implements _GetPagesManga {
  const _$GetPagesMangaImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'MangaPagesEvent.getPagesManga(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPagesMangaImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPagesMangaImplCopyWith<_$GetPagesMangaImpl> get copyWith =>
      __$$GetPagesMangaImplCopyWithImpl<_$GetPagesMangaImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getPagesManga,
  }) {
    return getPagesManga(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getPagesManga,
  }) {
    return getPagesManga?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getPagesManga,
    required TResult orElse(),
  }) {
    if (getPagesManga != null) {
      return getPagesManga(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPagesManga value) getPagesManga,
  }) {
    return getPagesManga(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPagesManga value)? getPagesManga,
  }) {
    return getPagesManga?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPagesManga value)? getPagesManga,
    required TResult orElse(),
  }) {
    if (getPagesManga != null) {
      return getPagesManga(this);
    }
    return orElse();
  }
}

abstract class _GetPagesManga implements MangaPagesEvent {
  const factory _GetPagesManga(final String id) = _$GetPagesMangaImpl;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$GetPagesMangaImplCopyWith<_$GetPagesMangaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MangaPagesState _$MangaPagesStateFromJson(Map<String, dynamic> json) {
  return _MangaPagesState.fromJson(json);
}

/// @nodoc
mixin _$MangaPagesState {
  MangaPagesStatus get status => throw _privateConstructorUsedError;
  PageModel? get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MangaPagesStateCopyWith<MangaPagesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaPagesStateCopyWith<$Res> {
  factory $MangaPagesStateCopyWith(
          MangaPagesState value, $Res Function(MangaPagesState) then) =
      _$MangaPagesStateCopyWithImpl<$Res, MangaPagesState>;
  @useResult
  $Res call({MangaPagesStatus status, PageModel? response});

  $PageModelCopyWith<$Res>? get response;
}

/// @nodoc
class _$MangaPagesStateCopyWithImpl<$Res, $Val extends MangaPagesState>
    implements $MangaPagesStateCopyWith<$Res> {
  _$MangaPagesStateCopyWithImpl(this._value, this._then);

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
              as MangaPagesStatus,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as PageModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PageModelCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $PageModelCopyWith<$Res>(_value.response!, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MangaPagesStateImplCopyWith<$Res>
    implements $MangaPagesStateCopyWith<$Res> {
  factory _$$MangaPagesStateImplCopyWith(_$MangaPagesStateImpl value,
          $Res Function(_$MangaPagesStateImpl) then) =
      __$$MangaPagesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MangaPagesStatus status, PageModel? response});

  @override
  $PageModelCopyWith<$Res>? get response;
}

/// @nodoc
class __$$MangaPagesStateImplCopyWithImpl<$Res>
    extends _$MangaPagesStateCopyWithImpl<$Res, _$MangaPagesStateImpl>
    implements _$$MangaPagesStateImplCopyWith<$Res> {
  __$$MangaPagesStateImplCopyWithImpl(
      _$MangaPagesStateImpl _value, $Res Function(_$MangaPagesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? response = freezed,
  }) {
    return _then(_$MangaPagesStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MangaPagesStatus,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as PageModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MangaPagesStateImpl implements _MangaPagesState {
  const _$MangaPagesStateImpl(
      {this.status = MangaPagesStatus.initial, this.response});

  factory _$MangaPagesStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$MangaPagesStateImplFromJson(json);

  @override
  @JsonKey()
  final MangaPagesStatus status;
  @override
  final PageModel? response;

  @override
  String toString() {
    return 'MangaPagesState(status: $status, response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaPagesStateImpl &&
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
  _$$MangaPagesStateImplCopyWith<_$MangaPagesStateImpl> get copyWith =>
      __$$MangaPagesStateImplCopyWithImpl<_$MangaPagesStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MangaPagesStateImplToJson(
      this,
    );
  }
}

abstract class _MangaPagesState implements MangaPagesState {
  const factory _MangaPagesState(
      {final MangaPagesStatus status,
      final PageModel? response}) = _$MangaPagesStateImpl;

  factory _MangaPagesState.fromJson(Map<String, dynamic> json) =
      _$MangaPagesStateImpl.fromJson;

  @override
  MangaPagesStatus get status;
  @override
  PageModel? get response;
  @override
  @JsonKey(ignore: true)
  _$$MangaPagesStateImplCopyWith<_$MangaPagesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
