import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = ColorScheme.fromSeed(
      surface: Color(0xff0a0e21),
      onSurface: Colors.white,
      seedColor: Colors.white,
    );
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          colorScheme: colorScheme,
          primaryColor: Color(0xff0a0e21),
          scaffoldBackgroundColor: Color(0xff0a0e21)),
      home: const InputPage(),
    );
  }
}
