import 'package:get_it/get_it.dart';

import 'features/number_trivia/presentation/bloc/number_trivia_bloc.dart';

final sl = GetIt.instance;

void init() {
  //! Features - Number Trivia
  //Bloc
  sl.registerFactory(
  () => NumberTriviaBloc(
    concrete: sl(),
    random: sl(),
    inputConverter: sl(),
  ),
);

  //! Core

  //! External

}