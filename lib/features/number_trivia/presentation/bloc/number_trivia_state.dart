part of 'number_trivia_bloc.dart';

@immutable
abstract class NumberTriviaState extends Equatable {
  final List properties = const <dynamic>[];

  NumberTriviaState({properties}) : super();

  List<dynamic> get props => properties;
}

class Empty extends NumberTriviaState {}

class Loading extends NumberTriviaState {}

class Loaded extends NumberTriviaState {
  final NumberTrivia trivia;

  Loaded({@required this.trivia}) : super();

  @override
  List get props => [trivia];
}

class Error extends NumberTriviaState {
  final String message;

  Error({@required this.message}) : super();

  @override
  List get props => [message];
}
