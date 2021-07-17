import 'package:flutter/material.dart';

class RoadSignQuizModel extends ChangeNotifier {
  int _quizTotalNumber = 0;
  int _quizCorrectNumber = 0;
//  int _correctRatio = 0;

  int get totalNumber => _quizTotalNumber;
  int get correctNumber => _quizCorrectNumber;
//  int get correctRatio => (_quizTotalNumber / _quizCorrectNumber) as int;

  void addTotalNumber() {
    _quizTotalNumber++;
    notifyListeners();
  }

  void addCorrectNumber() {
    _quizCorrectNumber++;
    notifyListeners();
  }

  void resetAll() {
    _quizTotalNumber = 0;
    _quizCorrectNumber = 0;
  }
}
