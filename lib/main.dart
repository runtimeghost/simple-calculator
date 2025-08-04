import 'package:calculator/bloc/calc_bloc.dart';
import 'package:calculator/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});
  final bool dark = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CalcBloc(),
      child: MaterialApp(
        title: "Calculator",
        theme: ThemeData(
          fontFamily: "Quicksand",
          primaryColor: Colors.teal.shade400,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.teal[600],
            foregroundColor: Colors.white,
          ),
          colorScheme: ColorScheme.fromSeed(brightness: dark?Brightness.dark:Brightness.light, seedColor: Colors.teal),
        ),
        debugShowCheckedModeBanner: false,
        home: Homepage(),
      ),
    );
  }
}
