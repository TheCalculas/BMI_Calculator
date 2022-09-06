import 'dart:math';

class Brain{
  late double _bmi = 0.0;
  Brain(this.height, this.weight);
  final int height;
  final int weight;

  String Calculate(){
    _bmi = weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1); // one decimal place
  }
  String GetResult()
  {
    if(_bmi>=25) return 'OverWeight';
    else if(_bmi>18) return 'Normal';
    else return 'UnderWeight';
  }
  String getInterpretation()
  {
    if(_bmi>=25) return 'You have a higher than normal body weight. Try to excercise more';
    else if(_bmi>18) return 'You have a normal body weight, Good Job!';
    else return 'You have a low body weight, you have to increase it!';
  }

}