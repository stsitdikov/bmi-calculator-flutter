import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF04040C),
        scaffoldBackgroundColor: Color(0xFF04040C),
      ),
      home: InputPage(),
      routes: {
        '/input page': (context) => InputPage(),
        '/results page': (context) => ResultsPage(),
      },
    );
  }
}
