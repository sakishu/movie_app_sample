import 'package:meta/meta.dart';

@immutable
class Config {
  const Config({required this.endpoint});
  factory Config.dev() =>
      const Config(endpoint: 'https://api.themoviedb.org/3');

  factory Config.of() {
    if (_instance != null) {
      return _instance!;
    }

    _instance = Config.dev();

    return _instance!;
  }

  final String endpoint;
  static Config? _instance;
}
