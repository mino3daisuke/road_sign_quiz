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
    return Column(
      children: [
        Text(
          "問題数: ${Provider.of<RoadSignQuizState>(context, listen: true).quizTotalNumber}  "
          "正解数: ${Provider.of<RoadSignQuizState>(context, listen: true).quizCorrectNumber}",
          style: TextStyle(fontSize: 36.0),
        ),
        printCorrectRatio(
            context, Provider.of<RoadSignQuizState>(context, listen: false)),
      ],
    );
  }

  Text printCorrectRatio(
      BuildContext context, RoadSignQuizState roadSignQuizState) {
    if (roadSignQuizState.quizTotalNumber == 0)
      return Text(
        "正答率: ---",
        style: TextStyle(fontSize: 36.0),
      );
    else if (roadSignQuizState.quizCorrectNumber == 0)
      return Text(
        "正答率: 0%",
        style: TextStyle(fontSize: 36.0),
      );
    else {
      final formatter = NumberFormat("###.0");
      return Text(
        "正答率: ${formatter.format(Provider.of<RoadSignQuizController>(context, listen: true).calcCorrectRatio())}%",
        style: TextStyle(fontSize: 36.0),
      );
    }
  }
}
