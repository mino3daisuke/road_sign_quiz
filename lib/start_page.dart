import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:road_sign_quiz/road_sign_quiz_model.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Road Sign Quiz'),
      ),
      body: SafeArea(
        child: Center(
          //はじめる画面
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text('はじめる!'),
                onPressed: () {
                  Provider.of<RoadSignQuizModel>(context, listen: false)
                      .resetAll();
                  Navigator.of(context).pushNamed('/play');
                },
              ),
              Consumer<RoadSignQuizModel>(
                builder: (context, roadSignQuizModel, child) {
                  return Text(
                    "問題数: ${roadSignQuizModel.totalNumber}  正解数: ${roadSignQuizModel.correctNumber}",
                    style: TextStyle(fontSize: 36.0),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
