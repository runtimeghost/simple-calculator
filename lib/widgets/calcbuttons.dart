import 'package:calculator/bloc/calc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class OperandButton extends StatelessWidget {
  final String txt;
  const OperandButton(this.txt, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalcBloc, CalcState>(
      builder: (context, state) {
        return ElevatedButton(
          style: const ButtonStyle(fixedSize: WidgetStatePropertyAll(Size(100, 64))),
          onPressed: () => context.read<CalcBloc>().add(
            state.refresh?OperandButtonPressed("0", txt):OperandButtonPressed(state.text, txt),
          ),
          child: Text(txt, style: TextStyle(fontSize: 32, fontFamily: "Quicksand")),
        );
      },
    );
  }
}

class OperatorButton extends StatelessWidget {
  final String? txt;
  final IconData? icon;
  const OperatorButton(this.txt, this.icon, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalcBloc, CalcState>(
      builder: (context, state) {
        return txt != null
            ? ElevatedButton(
                style: ButtonStyle(
                  fixedSize: WidgetStatePropertyAll(Size(100, 64)),
                ),
                onPressed: () => context.read<CalcBloc>().add(
                  OperatorButtonPressed(state.text, txt!),
                ),
                child: Text(
                  txt!,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                ),
              )
            : ElevatedButton.icon(
              label: Text(""),
                onPressed: () => context.read<CalcBloc>().add(
                  OperatorButtonPressed(state.text, ""),
                ),
                icon: Icon(icon),
                style: ButtonStyle(
                  foregroundColor: WidgetStatePropertyAll(
                    Theme.of(context).colorScheme.primary,
                  ),
                  fixedSize: WidgetStatePropertyAll(Size(100, 64)),
                ),
              );
      },
    );
  }
}
