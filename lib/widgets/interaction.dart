import 'package:calculator/widgets/calcbuttons.dart';
import 'package:flutter/material.dart';

class Interaction extends StatelessWidget {
  const Interaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            OperatorButton("AC", null),
            OperatorButton("√", null),
            OperatorButton(null, Icons.backspace),
            OperatorButton("÷", null),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            OperandButton("7"),
            OperandButton("8"),
            OperandButton("9"),
            OperatorButton("×", null),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            OperandButton("4"),
            OperandButton("5"),
            OperandButton("6"),
            OperatorButton("+", null),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            OperandButton("1"),
            OperandButton("2"),
            OperandButton("3"),
            OperatorButton("-", null),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            OperandButton("00"),
            OperandButton("0"),
            OperandButton("."),
            OperatorButton("=", null),
          ],
        ),
      ],
    );
  }
}
