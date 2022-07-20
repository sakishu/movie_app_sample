// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieDetail _$$_MovieDetailFromJson(Map<String, dynamic> json) =>
    _$_MovieDetail(
      id: json['id'] as int? ?? 0,
      title: json['title'] as String? ?? '',
      overview: json['overview'] as String? ?? '',
      posterPath: json['poster_path'] as String? ?? '',
      homePageUrl: json['homepage'] as String? ?? '',
      adult: json['adult'] as bool? ?? false,
    );

Map<String, dynamic> _$$_MovieDetailToJson(_$_MovieDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'homepage': instance.homePageUrl,
      'adult': instance.adult,
    };
