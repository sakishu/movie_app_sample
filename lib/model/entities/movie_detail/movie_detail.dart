import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_app/util/util.dart';

part 'movie_detail.freezed.dart';
part 'movie_detail.g.dart';

@freezed
class MovieDetail with _$MovieDetail {
  factory MovieDetail({
    @Default(0) int id,
    @Default('') String title,
    @Default('') String overview,
    @JsonKey(name: 'poster_path') @Default('') String posterPath,
    @JsonKey(name: 'homepage') @Default('') String homePageUrl,
    @Default(false) bool adult,
  }) = _MovieDetail;
  MovieDetail._();

  factory MovieDetail.fromJson(JsonMap json) => _$MovieDetailFromJson(json);
}
