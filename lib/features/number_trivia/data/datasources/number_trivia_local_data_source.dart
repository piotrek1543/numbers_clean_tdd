import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:number_trivia/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

const CACHED_NUMBER_TRIVIA = 'CACHED_NUMBER_TRIVIA';
abstract class NumberTriviaLocalDataSource {
  /// Gets the cached [NumberTriviaModel] which was gotten the last time
  /// the user had an internet connection.
  ///
  /// Throws [NoLocalDataException] if no cached data is present.
  Future<NumberTriviaModel> getLastNumberTrivia();

  Future<void> cacheNumberTrivia(NumberTriviaModel triviaToCache);
}

class NumberTriviaLocalDataSourceImpl implements NumberTriviaLocalDataSource {
  final SharedPreferences sharedPreferences;

  NumberTriviaLocalDataSourceImpl({@required this.sharedPreferences});

@override
Future<NumberTriviaModel> getLastNumberTrivia() {
  final jsonString = sharedPreferences.getString(CACHED_NUMBER_TRIVIA);
  // Future which is immediately completed
  return Future.value(NumberTriviaModel.fromJson(json.decode(jsonString)));
}

  @override
  Future<void> cacheNumberTrivia(NumberTriviaModel triviaToCache) {
    // TODO: implement cacheNumberTrivia
    return null;
  }
}