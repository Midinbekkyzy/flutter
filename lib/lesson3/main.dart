import 'package:flutter/material.dart';
import 'package:flutter_application_1/lesson3/temperatureApp.dart';
import 'package:flutter_application_1/lesson3/calculatorScreen.dart';

void main() => runApp(CalculatorApp());

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalculatorScreen(),
    );
  }
}
