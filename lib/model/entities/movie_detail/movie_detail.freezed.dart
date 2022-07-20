// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieDetail _$MovieDetailFromJson(Map<String, dynamic> json) {
  return _MovieDetail.fromJson(json);
}

/// @nodoc
mixin _$MovieDetail {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'homepage')
  String get homePageUrl => throw _privateConstructorUsedError;
  bool get adult => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailCopyWith<MovieDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailCopyWith<$Res> {
  factory $MovieDetailCopyWith(
          MovieDetail value, $Res Function(MovieDetail) then) =
      _$MovieDetailCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String overview,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'homepage') String homePageUrl,
      bool adult});
}

/// @nodoc
class _$MovieDetailCopyWithImpl<$Res> implements $MovieDetailCopyWith<$Res> {
  _$MovieDetailCopyWithImpl(this._value, this._then);

  final MovieDetail _value;
  // ignore: unused_field
  final $Res Function(MovieDetail) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? overview = freezed,
    Object? posterPath = freezed,
    Object? homePageUrl = freezed,
    Object? adult = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      homePageUrl: homePageUrl == freezed
          ? _value.homePageUrl
          : homePageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_MovieDetailCopyWith<$Res>
    implements $MovieDetailCopyWith<$Res> {
  factory _$$_MovieDetailCopyWith(
          _$_MovieDetail value, $Res Function(_$_MovieDetail) then) =
      __$$_MovieDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String overview,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'homepage') String homePageUrl,
      bool adult});
}

/// @nodoc
class __$$_MovieDetailCopyWithImpl<$Res> extends _$MovieDetailCopyWithImpl<$Res>
    implements _$$_MovieDetailCopyWith<$Res> {
  __$$_MovieDetailCopyWithImpl(
      _$_MovieDetail _value, $Res Function(_$_MovieDetail) _then)
      : super(_value, (v) => _then(v as _$_MovieDetail));

  @override
  _$_MovieDetail get _value => super._value as _$_MovieDetail;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? overview = freezed,
    Object? posterPath = freezed,
    Object? homePageUrl = freezed,
    Object? adult = freezed,
  }) {
    return _then(_$_MovieDetail(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      homePageUrl: homePageUrl == freezed
          ? _value.homePageUrl
          : homePageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieDetail extends _MovieDetail {
  _$_MovieDetail(
      {this.id = 0,
      this.title = '',
      this.overview = '',
      @JsonKey(name: 'poster_path') this.posterPath = '',
      @JsonKey(name: 'homepage') this.homePageUrl = '',
      this.adult = false})
      : super._();

  factory _$_MovieDetail.fromJson(Map<String, dynamic> json) =>
      _$$_MovieDetailFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String overview;
  @override
  @JsonKey(name: 'poster_path')
  final String posterPath;
  @override
  @JsonKey(name: 'homepage')
  final String homePageUrl;
  @override
  @JsonKey()
  final bool adult;

  @override
  String toString() {
    return 'MovieDetail(id: $id, title: $title, overview: $overview, posterPath: $posterPath, homePageUrl: $homePageUrl, adult: $adult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieDetail &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.overview, overview) &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality()
                .equals(other.homePageUrl, homePageUrl) &&
            const DeepCollectionEquality().equals(other.adult, adult));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(overview),
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(homePageUrl),
      const DeepCollectionEquality().hash(adult));

  @JsonKey(ignore: true)
  @override
  _$$_MovieDetailCopyWith<_$_MovieDetail> get copyWith =>
      __$$_MovieDetailCopyWithImpl<_$_MovieDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieDetailToJson(this);
  }
}

abstract class _MovieDetail extends MovieDetail {
  factory _MovieDetail(
      {final int id,
      final String title,
      final String overview,
      @JsonKey(name: 'poster_path') final String posterPath,
      @JsonKey(name: 'homepage') final String homePageUrl,
      final bool adult}) = _$_MovieDetail;
  _MovieDetail._() : super._();

  factory _MovieDetail.fromJson(Map<String, dynamic> json) =
      _$_MovieDetail.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get overview => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'poster_path')
  String get posterPath => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'homepage')
  String get homePageUrl => throw _privateConstructorUsedError;
  @override
  bool get adult => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MovieDetailCopyWith<_$_MovieDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
