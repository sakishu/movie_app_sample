import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_app/util/util.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  factory Movie({
    @Default(0) int id,
    @Default('') String title,
    @JsonKey(name: 'poster_path') @Default('') String posterPath,
    @JsonKey(name: 'release_date') @Default('') String releaseDate,
    @Default(false) bool adult,
  }) = _Movie;
  Movie._();

  factory Movie.fromJson(JsonMap json) => _$MovieFromJson(json);
}
