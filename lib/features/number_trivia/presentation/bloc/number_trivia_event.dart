part of 'number_trivia_bloc.dart';

@immutable
abstract class NumberTriviaEvent extends Equatable {
  final List<Object> eventProps;

  NumberTriviaEvent({this.eventProps = const <dynamic>[]}) : super();

  @override
  List<Object> get props => [...eventProps];
}

class GetTriviaForConcreteNumber extends NumberTriviaEvent {
  final String numberString;

  GetTriviaForConcreteNumber(this.numberString);

  @override
  List<Object> get eventProps => [numberString];
}

class GetTriviaForRandomNumber extends NumberTriviaEvent {}
