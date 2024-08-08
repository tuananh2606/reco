// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anilist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnilistModel _$AnilistModelFromJson(Map<String, dynamic> json) {
  return _AnilistModel.fromJson(json);
}

/// @nodoc
mixin _$AnilistModel {
  int? get currentPage => throw _privateConstructorUsedError;
  bool? get hasNextPage => throw _privateConstructorUsedError;
  List<Results>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnilistModelCopyWith<AnilistModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnilistModelCopyWith<$Res> {
  factory $AnilistModelCopyWith(
          AnilistModel value, $Res Function(AnilistModel) then) =
      _$AnilistModelCopyWithImpl<$Res, AnilistModel>;
  @useResult
  $Res call({int? currentPage, bool? hasNextPage, List<Results>? results});
}

/// @nodoc
class _$AnilistModelCopyWithImpl<$Res, $Val extends AnilistModel>
    implements $AnilistModelCopyWith<$Res> {
  _$AnilistModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? hasNextPage = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNextPage: freezed == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnilistModelImplCopyWith<$Res>
    implements $AnilistModelCopyWith<$Res> {
  factory _$$AnilistModelImplCopyWith(
          _$AnilistModelImpl value, $Res Function(_$AnilistModelImpl) then) =
      __$$AnilistModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? currentPage, bool? hasNextPage, List<Results>? results});
}

/// @nodoc
class __$$AnilistModelImplCopyWithImpl<$Res>
    extends _$AnilistModelCopyWithImpl<$Res, _$AnilistModelImpl>
    implements _$$AnilistModelImplCopyWith<$Res> {
  __$$AnilistModelImplCopyWithImpl(
      _$AnilistModelImpl _value, $Res Function(_$AnilistModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? hasNextPage = freezed,
    Object? results = freezed,
  }) {
    return _then(_$AnilistModelImpl(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNextPage: freezed == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnilistModelImpl implements _AnilistModel {
  const _$AnilistModelImpl(
      {this.currentPage, this.hasNextPage, final List<Results>? results})
      : _results = results;

  factory _$AnilistModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnilistModelImplFromJson(json);

  @override
  final int? currentPage;
  @override
  final bool? hasNextPage;
  final List<Results>? _results;
  @override
  List<Results>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AnilistModel(currentPage: $currentPage, hasNextPage: $hasNextPage, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnilistModelImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentPage, hasNextPage,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnilistModelImplCopyWith<_$AnilistModelImpl> get copyWith =>
      __$$AnilistModelImplCopyWithImpl<_$AnilistModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnilistModelImplToJson(
      this,
    );
  }
}

abstract class _AnilistModel implements AnilistModel {
  const factory _AnilistModel(
      {final int? currentPage,
      final bool? hasNextPage,
      final List<Results>? results}) = _$AnilistModelImpl;

  factory _AnilistModel.fromJson(Map<String, dynamic> json) =
      _$AnilistModelImpl.fromJson;

  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  @override
  List<Results>? get results;
  @override
  @JsonKey(ignore: true)
  _$$AnilistModelImplCopyWith<_$AnilistModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Results _$ResultsFromJson(Map<String, dynamic> json) {
  return _Results.fromJson(json);
}

/// @nodoc
mixin _$Results {
  String? get id => throw _privateConstructorUsedError;
  int? get malId => throw _privateConstructorUsedError;
  Title? get title => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get imageHash => throw _privateConstructorUsedError;
  String? get cover => throw _privateConstructorUsedError;
  String? get coverHash => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get rating => throw _privateConstructorUsedError;
  List<String>? get genres => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get releaseDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultsCopyWith<Results> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsCopyWith<$Res> {
  factory $ResultsCopyWith(Results value, $Res Function(Results) then) =
      _$ResultsCopyWithImpl<$Res, Results>;
  @useResult
  $Res call(
      {String? id,
      int? malId,
      Title? title,
      String? status,
      String? image,
      String? imageHash,
      String? cover,
      String? coverHash,
      String? description,
      int? rating,
      List<String>? genres,
      String? color,
      String? type,
      String? releaseDate});

  $TitleCopyWith<$Res>? get title;
}

/// @nodoc
class _$ResultsCopyWithImpl<$Res, $Val extends Results>
    implements $ResultsCopyWith<$Res> {
  _$ResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? malId = freezed,
    Object? title = freezed,
    Object? status = freezed,
    Object? image = freezed,
    Object? imageHash = freezed,
    Object? cover = freezed,
    Object? coverHash = freezed,
    Object? description = freezed,
    Object? rating = freezed,
    Object? genres = freezed,
    Object? color = freezed,
    Object? type = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      malId: freezed == malId
          ? _value.malId
          : malId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Title?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      imageHash: freezed == imageHash
          ? _value.imageHash
          : imageHash // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      coverHash: freezed == coverHash
          ? _value.coverHash
          : coverHash // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TitleCopyWith<$Res>? get title {
    if (_value.title == null) {
      return null;
    }

    return $TitleCopyWith<$Res>(_value.title!, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResultsImplCopyWith<$Res> implements $ResultsCopyWith<$Res> {
  factory _$$ResultsImplCopyWith(
          _$ResultsImpl value, $Res Function(_$ResultsImpl) then) =
      __$$ResultsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      int? malId,
      Title? title,
      String? status,
      String? image,
      String? imageHash,
      String? cover,
      String? coverHash,
      String? description,
      int? rating,
      List<String>? genres,
      String? color,
      String? type,
      String? releaseDate});

  @override
  $TitleCopyWith<$Res>? get title;
}

/// @nodoc
class __$$ResultsImplCopyWithImpl<$Res>
    extends _$ResultsCopyWithImpl<$Res, _$ResultsImpl>
    implements _$$ResultsImplCopyWith<$Res> {
  __$$ResultsImplCopyWithImpl(
      _$ResultsImpl _value, $Res Function(_$ResultsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? malId = freezed,
    Object? title = freezed,
    Object? status = freezed,
    Object? image = freezed,
    Object? imageHash = freezed,
    Object? cover = freezed,
    Object? coverHash = freezed,
    Object? description = freezed,
    Object? rating = freezed,
    Object? genres = freezed,
    Object? color = freezed,
    Object? type = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_$ResultsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      malId: freezed == malId
          ? _value.malId
          : malId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Title?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      imageHash: freezed == imageHash
          ? _value.imageHash
          : imageHash // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      coverHash: freezed == coverHash
          ? _value.coverHash
          : coverHash // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultsImpl implements _Results {
  const _$ResultsImpl(
      {this.id,
      this.malId,
      this.title,
      this.status,
      this.image,
      this.imageHash,
      this.cover,
      this.coverHash,
      this.description,
      this.rating,
      final List<String>? genres,
      this.color,
      this.type,
      this.releaseDate})
      : _genres = genres;

  factory _$ResultsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultsImplFromJson(json);

  @override
  final String? id;
  @override
  final int? malId;
  @override
  final Title? title;
  @override
  final String? status;
  @override
  final String? image;
  @override
  final String? imageHash;
  @override
  final String? cover;
  @override
  final String? coverHash;
  @override
  final String? description;
  @override
  final int? rating;
  final List<String>? _genres;
  @override
  List<String>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? color;
  @override
  final String? type;
  @override
  final String? releaseDate;

  @override
  String toString() {
    return 'Results(id: $id, malId: $malId, title: $title, status: $status, image: $image, imageHash: $imageHash, cover: $cover, coverHash: $coverHash, description: $description, rating: $rating, genres: $genres, color: $color, type: $type, releaseDate: $releaseDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.malId, malId) || other.malId == malId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.imageHash, imageHash) ||
                other.imageHash == imageHash) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.coverHash, coverHash) ||
                other.coverHash == coverHash) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      malId,
      title,
      status,
      image,
      imageHash,
      cover,
      coverHash,
      description,
      rating,
      const DeepCollectionEquality().hash(_genres),
      color,
      type,
      releaseDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultsImplCopyWith<_$ResultsImpl> get copyWith =>
      __$$ResultsImplCopyWithImpl<_$ResultsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultsImplToJson(
      this,
    );
  }
}

abstract class _Results implements Results {
  const factory _Results(
      {final String? id,
      final int? malId,
      final Title? title,
      final String? status,
      final String? image,
      final String? imageHash,
      final String? cover,
      final String? coverHash,
      final String? description,
      final int? rating,
      final List<String>? genres,
      final String? color,
      final String? type,
      final String? releaseDate}) = _$ResultsImpl;

  factory _Results.fromJson(Map<String, dynamic> json) = _$ResultsImpl.fromJson;

  @override
  String? get id;
  @override
  int? get malId;
  @override
  Title? get title;
  @override
  String? get status;
  @override
  String? get image;
  @override
  String? get imageHash;
  @override
  String? get cover;
  @override
  String? get coverHash;
  @override
  String? get description;
  @override
  int? get rating;
  @override
  List<String>? get genres;
  @override
  String? get color;
  @override
  String? get type;
  @override
  String? get releaseDate;
  @override
  @JsonKey(ignore: true)
  _$$ResultsImplCopyWith<_$ResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Title _$TitleFromJson(Map<String, dynamic> json) {
  return _Title.fromJson(json);
}

/// @nodoc
mixin _$Title {
  String? get romaji => throw _privateConstructorUsedError;
  String? get english => throw _privateConstructorUsedError;
  String? get native => throw _privateConstructorUsedError;
  String? get userPreferred => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TitleCopyWith<Title> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TitleCopyWith<$Res> {
  factory $TitleCopyWith(Title value, $Res Function(Title) then) =
      _$TitleCopyWithImpl<$Res, Title>;
  @useResult
  $Res call(
      {String? romaji, String? english, String? native, String? userPreferred});
}

/// @nodoc
class _$TitleCopyWithImpl<$Res, $Val extends Title>
    implements $TitleCopyWith<$Res> {
  _$TitleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? romaji = freezed,
    Object? english = freezed,
    Object? native = freezed,
    Object? userPreferred = freezed,
  }) {
    return _then(_value.copyWith(
      romaji: freezed == romaji
          ? _value.romaji
          : romaji // ignore: cast_nullable_to_non_nullable
              as String?,
      english: freezed == english
          ? _value.english
          : english // ignore: cast_nullable_to_non_nullable
              as String?,
      native: freezed == native
          ? _value.native
          : native // ignore: cast_nullable_to_non_nullable
              as String?,
      userPreferred: freezed == userPreferred
          ? _value.userPreferred
          : userPreferred // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TitleImplCopyWith<$Res> implements $TitleCopyWith<$Res> {
  factory _$$TitleImplCopyWith(
          _$TitleImpl value, $Res Function(_$TitleImpl) then) =
      __$$TitleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? romaji, String? english, String? native, String? userPreferred});
}

/// @nodoc
class __$$TitleImplCopyWithImpl<$Res>
    extends _$TitleCopyWithImpl<$Res, _$TitleImpl>
    implements _$$TitleImplCopyWith<$Res> {
  __$$TitleImplCopyWithImpl(
      _$TitleImpl _value, $Res Function(_$TitleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? romaji = freezed,
    Object? english = freezed,
    Object? native = freezed,
    Object? userPreferred = freezed,
  }) {
    return _then(_$TitleImpl(
      romaji: freezed == romaji
          ? _value.romaji
          : romaji // ignore: cast_nullable_to_non_nullable
              as String?,
      english: freezed == english
          ? _value.english
          : english // ignore: cast_nullable_to_non_nullable
              as String?,
      native: freezed == native
          ? _value.native
          : native // ignore: cast_nullable_to_non_nullable
              as String?,
      userPreferred: freezed == userPreferred
          ? _value.userPreferred
          : userPreferred // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TitleImpl implements _Title {
  const _$TitleImpl(
      {this.romaji, this.english, this.native, this.userPreferred});

  factory _$TitleImpl.fromJson(Map<String, dynamic> json) =>
      _$$TitleImplFromJson(json);

  @override
  final String? romaji;
  @override
  final String? english;
  @override
  final String? native;
  @override
  final String? userPreferred;

  @override
  String toString() {
    return 'Title(romaji: $romaji, english: $english, native: $native, userPreferred: $userPreferred)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TitleImpl &&
            (identical(other.romaji, romaji) || other.romaji == romaji) &&
            (identical(other.english, english) || other.english == english) &&
            (identical(other.native, native) || other.native == native) &&
            (identical(other.userPreferred, userPreferred) ||
                other.userPreferred == userPreferred));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, romaji, english, native, userPreferred);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TitleImplCopyWith<_$TitleImpl> get copyWith =>
      __$$TitleImplCopyWithImpl<_$TitleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TitleImplToJson(
      this,
    );
  }
}

abstract class _Title implements Title {
  const factory _Title(
      {final String? romaji,
      final String? english,
      final String? native,
      final String? userPreferred}) = _$TitleImpl;

  factory _Title.fromJson(Map<String, dynamic> json) = _$TitleImpl.fromJson;

  @override
  String? get romaji;
  @override
  String? get english;
  @override
  String? get native;
  @override
  String? get userPreferred;
  @override
  @JsonKey(ignore: true)
  _$$TitleImplCopyWith<_$TitleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
