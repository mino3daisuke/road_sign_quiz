import 'package:flutter/material.dart';
import "package:intl/intl.dart";
import 'package:provider/provider.dart';
import 'package:road_sign_quiz/road_sign_quiz_model.dart';

class PrintCorrectNumber extends StatelessWidget {
  const PrintCorrectNumber({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<RoadSignQuizModel>(
        builder: (context, roadSignQuizModel, child) {
      return Column(
        children: [
          Text(
            "問題数: ${roadSignQuizModel.totalNumber}  正解数: ${roadSignQuizModel.correctNumber}",
            style: TextStyle(fontSize: 36.0),
          ),
          printCorrectRatio(roadSignQuizModel),
        ],
      );
    });
  }

  Text printCorrectRatio(RoadSignQuizModel roadSignQuizModel) {
    if (roadSignQuizModel.totalNumber == 0)
      return Text(
        "正答率: ---",
        style: TextStyle(fontSize: 36.0),
      );
    else if (roadSignQuizModel.correctNumber == 0)
      return Text(
        "正答率: 0%",
        style: TextStyle(fontSize: 36.0),
      );
    else {
      final formatter = NumberFormat("###.0");
      return Text(
        "正答率: ${formatter.format(roadSignQuizModel.correctRatio)}%",
        style: TextStyle(fontSize: 36.0),
      );
    }
  }
}
