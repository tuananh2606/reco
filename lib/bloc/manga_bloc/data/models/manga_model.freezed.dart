// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manga_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MangaModel _$MangaModelFromJson(Map<String, dynamic> json) {
  return _MangaModel.fromJson(json);
}

/// @nodoc
mixin _$MangaModel {
  int get status => throw _privateConstructorUsedError;
  List<Manga> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MangaModelCopyWith<MangaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaModelCopyWith<$Res> {
  factory $MangaModelCopyWith(
          MangaModel value, $Res Function(MangaModel) then) =
      _$MangaModelCopyWithImpl<$Res, MangaModel>;
  @useResult
  $Res call({int status, List<Manga> results});
}

/// @nodoc
class _$MangaModelCopyWithImpl<$Res, $Val extends MangaModel>
    implements $MangaModelCopyWith<$Res> {
  _$MangaModelCopyWithImpl(this._value, this._then);

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
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Manga>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MangaModelImplCopyWith<$Res>
    implements $MangaModelCopyWith<$Res> {
  factory _$$MangaModelImplCopyWith(
          _$MangaModelImpl value, $Res Function(_$MangaModelImpl) then) =
      __$$MangaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, List<Manga> results});
}

/// @nodoc
class __$$MangaModelImplCopyWithImpl<$Res>
    extends _$MangaModelCopyWithImpl<$Res, _$MangaModelImpl>
    implements _$$MangaModelImplCopyWith<$Res> {
  __$$MangaModelImplCopyWithImpl(
      _$MangaModelImpl _value, $Res Function(_$MangaModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? results = null,
  }) {
    return _then(_$MangaModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Manga>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MangaModelImpl implements _MangaModel {
  const _$MangaModelImpl(
      {required this.status, required final List<Manga> results})
      : _results = results;

  factory _$MangaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MangaModelImplFromJson(json);

  @override
  final int status;
  final List<Manga> _results;
  @override
  List<Manga> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'MangaModel(status: $status, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaModelImpl &&
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
  _$$MangaModelImplCopyWith<_$MangaModelImpl> get copyWith =>
      __$$MangaModelImplCopyWithImpl<_$MangaModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MangaModelImplToJson(
      this,
    );
  }
}

abstract class _MangaModel implements MangaModel {
  const factory _MangaModel(
      {required final int status,
      required final List<Manga> results}) = _$MangaModelImpl;

  factory _MangaModel.fromJson(Map<String, dynamic> json) =
      _$MangaModelImpl.fromJson;

  @override
  int get status;
  @override
  List<Manga> get results;
  @override
  @JsonKey(ignore: true)
  _$$MangaModelImplCopyWith<_$MangaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MangaDetails _$MangaDetailsFromJson(Map<String, dynamic> json) {
  return _MangaDetails.fromJson(json);
}

/// @nodoc
mixin _$MangaDetails {
  int get status => throw _privateConstructorUsedError;
  Manga get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MangaDetailsCopyWith<MangaDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaDetailsCopyWith<$Res> {
  factory $MangaDetailsCopyWith(
          MangaDetails value, $Res Function(MangaDetails) then) =
      _$MangaDetailsCopyWithImpl<$Res, MangaDetails>;
  @useResult
  $Res call({int status, Manga results});

  $MangaCopyWith<$Res> get results;
}

/// @nodoc
class _$MangaDetailsCopyWithImpl<$Res, $Val extends MangaDetails>
    implements $MangaDetailsCopyWith<$Res> {
  _$MangaDetailsCopyWithImpl(this._value, this._then);

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
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as Manga,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MangaCopyWith<$Res> get results {
    return $MangaCopyWith<$Res>(_value.results, (value) {
      return _then(_value.copyWith(results: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MangaDetailsImplCopyWith<$Res>
    implements $MangaDetailsCopyWith<$Res> {
  factory _$$MangaDetailsImplCopyWith(
          _$MangaDetailsImpl value, $Res Function(_$MangaDetailsImpl) then) =
      __$$MangaDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, Manga results});

  @override
  $MangaCopyWith<$Res> get results;
}

/// @nodoc
class __$$MangaDetailsImplCopyWithImpl<$Res>
    extends _$MangaDetailsCopyWithImpl<$Res, _$MangaDetailsImpl>
    implements _$$MangaDetailsImplCopyWith<$Res> {
  __$$MangaDetailsImplCopyWithImpl(
      _$MangaDetailsImpl _value, $Res Function(_$MangaDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? results = null,
  }) {
    return _then(_$MangaDetailsImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as Manga,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MangaDetailsImpl implements _MangaDetails {
  const _$MangaDetailsImpl({required this.status, required this.results});

  factory _$MangaDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MangaDetailsImplFromJson(json);

  @override
  final int status;
  @override
  final Manga results;

  @override
  String toString() {
    return 'MangaDetails(status: $status, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaDetailsImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.results, results) || other.results == results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, results);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MangaDetailsImplCopyWith<_$MangaDetailsImpl> get copyWith =>
      __$$MangaDetailsImplCopyWithImpl<_$MangaDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MangaDetailsImplToJson(
      this,
    );
  }
}

abstract class _MangaDetails implements MangaDetails {
  const factory _MangaDetails(
      {required final int status,
      required final Manga results}) = _$MangaDetailsImpl;

  factory _MangaDetails.fromJson(Map<String, dynamic> json) =
      _$MangaDetailsImpl.fromJson;

  @override
  int get status;
  @override
  Manga get results;
  @override
  @JsonKey(ignore: true)
  _$$MangaDetailsImplCopyWith<_$MangaDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Manga _$MangaFromJson(Map<String, dynamic> json) {
  return _Manga.fromJson(json);
}

/// @nodoc
mixin _$Manga {
  String get title => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'img')
  String? get img => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get img1 => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get genres => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get heading => throw _privateConstructorUsedError;
  List<String>? get updated => throw _privateConstructorUsedError;
  List<Chapter>? get chapters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MangaCopyWith<Manga> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaCopyWith<$Res> {
  factory $MangaCopyWith(Manga value, $Res Function(Manga) then) =
      _$MangaCopyWithImpl<$Res, Manga>;
  @useResult
  $Res call(
      {String title,
      String author,
      String? id,
      @JsonKey(name: 'img') String? img,
      @JsonKey(name: 'image') String? img1,
      String? status,
      String? genres,
      String? date,
      String? description,
      String? heading,
      List<String>? updated,
      List<Chapter>? chapters});
}

/// @nodoc
class _$MangaCopyWithImpl<$Res, $Val extends Manga>
    implements $MangaCopyWith<$Res> {
  _$MangaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? author = null,
    Object? id = freezed,
    Object? img = freezed,
    Object? img1 = freezed,
    Object? status = freezed,
    Object? genres = freezed,
    Object? date = freezed,
    Object? description = freezed,
    Object? heading = freezed,
    Object? updated = freezed,
    Object? chapters = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      img1: freezed == img1
          ? _value.img1
          : img1 // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      heading: freezed == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as String?,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      chapters: freezed == chapters
          ? _value.chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<Chapter>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MangaImplCopyWith<$Res> implements $MangaCopyWith<$Res> {
  factory _$$MangaImplCopyWith(
          _$MangaImpl value, $Res Function(_$MangaImpl) then) =
      __$$MangaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String author,
      String? id,
      @JsonKey(name: 'img') String? img,
      @JsonKey(name: 'image') String? img1,
      String? status,
      String? genres,
      String? date,
      String? description,
      String? heading,
      List<String>? updated,
      List<Chapter>? chapters});
}

/// @nodoc
class __$$MangaImplCopyWithImpl<$Res>
    extends _$MangaCopyWithImpl<$Res, _$MangaImpl>
    implements _$$MangaImplCopyWith<$Res> {
  __$$MangaImplCopyWithImpl(
      _$MangaImpl _value, $Res Function(_$MangaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? author = null,
    Object? id = freezed,
    Object? img = freezed,
    Object? img1 = freezed,
    Object? status = freezed,
    Object? genres = freezed,
    Object? date = freezed,
    Object? description = freezed,
    Object? heading = freezed,
    Object? updated = freezed,
    Object? chapters = freezed,
  }) {
    return _then(_$MangaImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      img1: freezed == img1
          ? _value.img1
          : img1 // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      heading: freezed == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as String?,
      updated: freezed == updated
          ? _value._updated
          : updated // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      chapters: freezed == chapters
          ? _value._chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<Chapter>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MangaImpl implements _Manga {
  const _$MangaImpl(
      {required this.title,
      required this.author,
      this.id,
      @JsonKey(name: 'img') this.img,
      @JsonKey(name: 'image') this.img1,
      this.status,
      this.genres,
      this.date,
      this.description,
      this.heading,
      final List<String>? updated,
      final List<Chapter>? chapters})
      : _updated = updated,
        _chapters = chapters;

  factory _$MangaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MangaImplFromJson(json);

  @override
  final String title;
  @override
  final String author;
  @override
  final String? id;
  @override
  @JsonKey(name: 'img')
  final String? img;
  @override
  @JsonKey(name: 'image')
  final String? img1;
  @override
  final String? status;
  @override
  final String? genres;
  @override
  final String? date;
  @override
  final String? description;
  @override
  final String? heading;
  final List<String>? _updated;
  @override
  List<String>? get updated {
    final value = _updated;
    if (value == null) return null;
    if (_updated is EqualUnmodifiableListView) return _updated;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Chapter>? _chapters;
  @override
  List<Chapter>? get chapters {
    final value = _chapters;
    if (value == null) return null;
    if (_chapters is EqualUnmodifiableListView) return _chapters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Manga(title: $title, author: $author, id: $id, img: $img, img1: $img1, status: $status, genres: $genres, date: $date, description: $description, heading: $heading, updated: $updated, chapters: $chapters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.img1, img1) || other.img1 == img1) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.genres, genres) || other.genres == genres) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.heading, heading) || other.heading == heading) &&
            const DeepCollectionEquality().equals(other._updated, _updated) &&
            const DeepCollectionEquality().equals(other._chapters, _chapters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      author,
      id,
      img,
      img1,
      status,
      genres,
      date,
      description,
      heading,
      const DeepCollectionEquality().hash(_updated),
      const DeepCollectionEquality().hash(_chapters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MangaImplCopyWith<_$MangaImpl> get copyWith =>
      __$$MangaImplCopyWithImpl<_$MangaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MangaImplToJson(
      this,
    );
  }
}

abstract class _Manga implements Manga {
  const factory _Manga(
      {required final String title,
      required final String author,
      final String? id,
      @JsonKey(name: 'img') final String? img,
      @JsonKey(name: 'image') final String? img1,
      final String? status,
      final String? genres,
      final String? date,
      final String? description,
      final String? heading,
      final List<String>? updated,
      final List<Chapter>? chapters}) = _$MangaImpl;

  factory _Manga.fromJson(Map<String, dynamic> json) = _$MangaImpl.fromJson;

  @override
  String get title;
  @override
  String get author;
  @override
  String? get id;
  @override
  @JsonKey(name: 'img')
  String? get img;
  @override
  @JsonKey(name: 'image')
  String? get img1;
  @override
  String? get status;
  @override
  String? get genres;
  @override
  String? get date;
  @override
  String? get description;
  @override
  String? get heading;
  @override
  List<String>? get updated;
  @override
  List<Chapter>? get chapters;
  @override
  @JsonKey(ignore: true)
  _$$MangaImplCopyWith<_$MangaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Chapter _$ChapterFromJson(Map<String, dynamic> json) {
  return _Chapter.fromJson(json);
}

/// @nodoc
mixin _$Chapter {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChapterCopyWith<Chapter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterCopyWith<$Res> {
  factory $ChapterCopyWith(Chapter value, $Res Function(Chapter) then) =
      _$ChapterCopyWithImpl<$Res, Chapter>;
  @useResult
  $Res call({String? id, String? title});
}

/// @nodoc
class _$ChapterCopyWithImpl<$Res, $Val extends Chapter>
    implements $ChapterCopyWith<$Res> {
  _$ChapterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChapterImplCopyWith<$Res> implements $ChapterCopyWith<$Res> {
  factory _$$ChapterImplCopyWith(
          _$ChapterImpl value, $Res Function(_$ChapterImpl) then) =
      __$$ChapterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? title});
}

/// @nodoc
class __$$ChapterImplCopyWithImpl<$Res>
    extends _$ChapterCopyWithImpl<$Res, _$ChapterImpl>
    implements _$$ChapterImplCopyWith<$Res> {
  __$$ChapterImplCopyWithImpl(
      _$ChapterImpl _value, $Res Function(_$ChapterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_$ChapterImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChapterImpl implements _Chapter {
  const _$ChapterImpl({this.id, this.title});

  factory _$ChapterImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChapterImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;

  @override
  String toString() {
    return 'Chapter(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterImplCopyWith<_$ChapterImpl> get copyWith =>
      __$$ChapterImplCopyWithImpl<_$ChapterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChapterImplToJson(
      this,
    );
  }
}

abstract class _Chapter implements Chapter {
  const factory _Chapter({final String? id, final String? title}) =
      _$ChapterImpl;

  factory _Chapter.fromJson(Map<String, dynamic> json) = _$ChapterImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$ChapterImplCopyWith<_$ChapterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PageModel _$PageModelFromJson(Map<String, dynamic> json) {
  return _PageModel.fromJson(json);
}

/// @nodoc
mixin _$PageModel {
  int get status => throw _privateConstructorUsedError;
  List<String> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageModelCopyWith<PageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageModelCopyWith<$Res> {
  factory $PageModelCopyWith(PageModel value, $Res Function(PageModel) then) =
      _$PageModelCopyWithImpl<$Res, PageModel>;
  @useResult
  $Res call({int status, List<String> results});
}

/// @nodoc
class _$PageModelCopyWithImpl<$Res, $Val extends PageModel>
    implements $PageModelCopyWith<$Res> {
  _$PageModelCopyWithImpl(this._value, this._then);

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
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageModelImplCopyWith<$Res>
    implements $PageModelCopyWith<$Res> {
  factory _$$PageModelImplCopyWith(
          _$PageModelImpl value, $Res Function(_$PageModelImpl) then) =
      __$$PageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, List<String> results});
}

/// @nodoc
class __$$PageModelImplCopyWithImpl<$Res>
    extends _$PageModelCopyWithImpl<$Res, _$PageModelImpl>
    implements _$$PageModelImplCopyWith<$Res> {
  __$$PageModelImplCopyWithImpl(
      _$PageModelImpl _value, $Res Function(_$PageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? results = null,
  }) {
    return _then(_$PageModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PageModelImpl implements _PageModel {
  const _$PageModelImpl(
      {required this.status, required final List<String> results})
      : _results = results;

  factory _$PageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageModelImplFromJson(json);

  @override
  final int status;
  final List<String> _results;
  @override
  List<String> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'PageModel(status: $status, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageModelImpl &&
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
  _$$PageModelImplCopyWith<_$PageModelImpl> get copyWith =>
      __$$PageModelImplCopyWithImpl<_$PageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PageModelImplToJson(
      this,
    );
  }
}

abstract class _PageModel implements PageModel {
  const factory _PageModel(
      {required final int status,
      required final List<String> results}) = _$PageModelImpl;

  factory _PageModel.fromJson(Map<String, dynamic> json) =
      _$PageModelImpl.fromJson;

  @override
  int get status;
  @override
  List<String> get results;
  @override
  @JsonKey(ignore: true)
  _$$PageModelImplCopyWith<_$PageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
