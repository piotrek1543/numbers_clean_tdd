import 'package:flutter/material.dart';
import 'package:number_trivia/trivia_app.dart';
import 'injection_container.dart' as di;

void main() async {
  await di.init();
  runApp(TriviaApp());
}
