import 'package:flutter/material.dart';
import 'package:road_sign_quiz/app_settings.dart';

class JudgeResultText extends StatelessWidget {
  const JudgeResultText(this.judgeResult);

  final JudgeResult judgeResult;

  @override
  Widget build(BuildContext context) {
    return Text(
      judgeText(judgeResult),
      style: TextStyle(fontSize: 36.0),
    );
  }

  String judgeText(JudgeResult judgeResult){
    switch(judgeResult){
      case JudgeResult.none:
        return '道路標識クイズ！';
      case JudgeResult.incorrect:
        return '不正解！';
      case JudgeResult.correct:
        return '正解！';
    }
    return '';
  }
}

