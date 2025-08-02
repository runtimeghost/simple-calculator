import 'package:calculator/widgets/appbar.dart';
import 'package:calculator/widgets/display.dart';
import 'package:calculator/widgets/interaction.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CalcAppbar("Calculator"),
      body: Center(
        child: Column(
          children: [
            Expanded(flex: 1, child: CalcDisplay()),
            Expanded(flex: 2, child: Interaction()),
          ],
        ),
      ),
    );
  }
}
