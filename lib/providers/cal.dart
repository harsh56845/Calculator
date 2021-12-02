// ignore_for_file: unused_field

import 'package:flutter/cupertino.dart';
import 'package:math_expressions/math_expressions.dart';

class Cal extends ChangeNotifier{

String footerText = "Made By Harsh";
  String _expression = "";
  String _history ="";
  

  void numClick(String text) {
    
      _expression += text;
    notifyListeners();
  }

  void allClear(String text) {
    
      _history = "";
      _expression = "";
      notifyListeners();
    
  }

  void clear(String text) {
    
      _expression = "";
      notifyListeners();
    
  }

   void evaluate(String text) {
    Parser p = Parser();
    Expression exp = p.parse(_expression);
    ContextModel cm = ContextModel();

    
      _history = _expression;
      _expression = exp.evaluate(EvaluationType.REAL, cm).toString();
      notifyListeners();
    
  }



}