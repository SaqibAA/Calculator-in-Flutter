import 'package:flutter/material.dart';
import 'package:flutter_simple_calculator/flutter_simple_calculator.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => CalculatorState();
}

class CalculatorState extends State<Calculator> {
  double currentValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Calculator")),
      body: Container(
        margin: const EdgeInsets.only(top: 150),
        child: SimpleCalculator(
          value: currentValue,
          hideExpression: false,
          hideSurroundingBorder: true,
          onChanged: (key, value, expression) {
            setState(() {
              currentValue = value ?? 0;
            });
            print("$key\t$value\t$expression");
          },
          onTappedDisplay: (value, details) {
            print("$value\t${details.globalPosition}");
          },
        ),
      ),
    );
  }
}
