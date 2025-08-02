import 'dart:math';

import 'package:dart_eval/dart_eval.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'calc_event.dart';
part 'calc_state.dart';

class CalcBloc extends Bloc<CalcEvent, CalcState> {
  static const Map<String, int> operatorPriority = {
    "+": 1,
    "-": 1,
    "*": 2,
    "/": 2,
  };

  static List<String> postfix = <String>[];

  CalcBloc() : super(CalcState("0")) {
    on<OperandButtonPressed>((event, emit) {
      if ((event.text == "0" || event.text == "00") && event.pressed != ".") {
        emit(CalcState(event.pressed));
      } else {
        emit(CalcState(event.text + event.pressed));
      }
    });

    on<OperatorButtonPressed>((event, emit) {
      if (event.text.startsWith("E") || event.text.startsWith("C")){
        return emit(CalcState("0"));
      }
      if (event.pressed.isEmpty){
        if (event.text != "0"){
          return emit(CalcState(event.text.substring(0, event.text.length-1)));
        }
        else {
          return;
        }
      }
      else if (event.pressed == "AC") {
        emit(CalcState("0"));
      }
      else if (event.pressed == "√") {
        try {
          emit(CalcState(sqrt(num.parse(event.text)).toString(), refresh: true));
        } catch (e){
          emit(CalcState("Error!", refresh: true));
        }
      }
      else if (event.pressed == "="){
        try {

        String res = eval(event.text.replaceAll("×", "*").replaceAll("÷", "/")).toString();
        if (res == "null") {
          emit(CalcState("0"));
        }
        else if (res == "Infinity" || res == "NaN") {
          emit(CalcState("Can't Divide by Zero!", refresh: true));
        }
        else {
          emit(CalcState(res, refresh: true));
        }
        } catch (e) {
          emit(CalcState("Error!", refresh: true));
        }
      }
      else {
        emit(CalcState(event.text+event.pressed));
      }
    });
  }
}
