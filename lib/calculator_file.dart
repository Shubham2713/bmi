import 'dart:math';

import 'package:flutter/material.dart';

class CalculatorFile {
  CalculatorFile({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String Result() {
    if (_bmi >= 25)
      return 'Overweight';
    else if (_bmi >= 18.5)
      return 'Normal';
    else if (_bmi < 18.5) return 'Underweight';
  }

  String getInterpretaions() {
    if (_bmi >= 25)
      return 'Your body weight is more than normal, Eat healthy & Exercise';
    else if (_bmi >= 18.5)
      return 'Your body weight is normal, Stay the Same!';
    else if (_bmi < 18.5)
      return 'Your body weight is lesser than normal, Eat more healthy';
  }
}
