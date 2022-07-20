import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movies_app/config.dart';
import 'package:movies_app/model/model.dart';
import 'package:movies_app/util/util.dart';

final movieListProvider = FutureProvider<List<Movie>>((ref) async {
  final apiKey = '?api_key=${dotenv.env['API_KEY']}';
  const path = '/movie/now_playing';
  final result = await ref.watch(httpClientProvider).get(
        Uri.parse(
          '${Config.of().endpoint}$path$apiKey',
        ),
      );
  const resultKey = 'results';
  final json =
      (await jsonDecode(result.body)[resultKey] as List).cast<JsonMap>();
  final list = json.map(Movie.fromJson).toList();
  return list;
});
