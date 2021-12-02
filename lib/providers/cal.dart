

import 'package:flutter/cupertino.dart';
import 'package:math_expressions/math_expressions.dart';

class Cal extends ChangeNotifier{

String footerText = "Made By Harsh";
String expression = "";
String history ="";

  void numClick(String text) {
    
      expression += text;
    notifyListeners();
  }

  void allClear(String text) {
    
      history = "";
      expression = "";
      notifyListeners();
    
  }

  void clear(String text) {
    
      expression = "";
      notifyListeners();
    
  }

   void evaluate(String text) {
    Parser p = Parser();
    Expression exp = p.parse(expression);
    ContextModel cm = ContextModel();

    
      history = expression;
      expression = exp.evaluate(EvaluationType.REAL, cm).toString();
      notifyListeners();
    
  }



}