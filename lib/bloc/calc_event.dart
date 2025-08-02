part of 'calc_bloc.dart';

sealed class CalcEvent {
  String text, pressed;
  CalcEvent(this.text, this.pressed);
}

final class OperandButtonPressed extends CalcEvent {
  OperandButtonPressed(super.text, super.pressed);
}

final class OperatorButtonPressed extends CalcEvent {
  OperatorButtonPressed(super.text, super.pressed);
}
