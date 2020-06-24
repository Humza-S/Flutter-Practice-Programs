import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;
  String calculateBMI() {
    _bmi = weight / pow(height, 2);
    _bmi *= 703;
    return _bmi.toStringAsFixed(2);
  }

  String getResult() {
    if (_bmi >= 30)
      return 'Obese';
    else if (_bmi >= 25)
      return 'Overweight';
    else if (_bmi >= 18.5)
      return 'Healthy Weight';
    else
      return 'Underweight';
  }

  String getInterpretattion() {
    if (_bmi >= 30)
      return 'You have an extremely high body weight. Try to exercise more and eat healthier.';
    else if (_bmi >= 25)
      return 'You have a higher than normal body weight. Try to exercise more.';
    else if (_bmi >= 18.5)
      return 'You have a normal body weight. Good job!';
    else
      return 'You have a lower than normal body weight. You can eat a bit more';
  }
}
