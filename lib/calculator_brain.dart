import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});

  final int weight;
  final int height;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL WEIGHT';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getComment() {
    if (_bmi >= 25) {
      return 'Your body weight is higher than normal. You need to exercise more.';
    } else if (_bmi > 18.5) {
      return 'Your body weight is normal. Good job!';
    } else {
      return 'Your body weight is lower than normal. You need to consume more food.';
    }
  }
}
