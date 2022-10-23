import 'package:exercise_bloc/blocs/counter_provider_bloc.dart';
import 'package:exercise_bloc/tutor1/tutor_one_screen.dart';
import 'package:exercise_bloc/tutor2/tutor_two_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => CounterBlocProvider(),
        child: TutorTwoScreen(),
      ),
    );
  }
}
