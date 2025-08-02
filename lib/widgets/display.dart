import 'package:calculator/bloc/calc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalcDisplay extends StatelessWidget {
  const CalcDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xfffffff0),
        border: Border.all(width: 0.5),
      ),
      child: BlocBuilder<CalcBloc, CalcState>(
        builder: (context, state) {
          return Align(
            alignment: AlignmentGeometry.xy(1, 1),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Text(
                state.text,
                textAlign: TextAlign.end,
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
      ),
    );
  }
}
