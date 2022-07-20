import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movies_app/config.dart';
import 'package:movies_app/model/entities/movie_detail/movie_detail.dart';
import 'package:movies_app/model/movie_notifier.dart';
import 'package:movies_app/util/providers.dart';
import 'package:movies_app/util/util.dart';

final movieDetails = FutureProvider.family<MovieDetail, int>((ref, id) async {
  final apiKey = '?api_key=${dotenv.env['API_KEY']}';
  final result = await ref.watch(httpClientProvider).get(
        Uri.parse(
          '${Config.of().endpoint}/movie/$id$apiKey',
        ),
      );
  final json = await jsonDecode(result.body) as JsonMap;
  final data = MovieDetail.fromJson(json);
  return data;
});

final movieDetailProvider = Provider(
  (ref) {
    final movieId = ref.watch(movieNotifierProvider).id;
    return ref.watch(movieDetails(movieId));
  },
);
