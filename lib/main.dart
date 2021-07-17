import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:road_sign_quiz/app_settings.dart';
import 'package:road_sign_quiz/judge_result_text.dart';
import 'package:road_sign_quiz/start_page.dart';

import 'choice_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '道路標識クイズ',
      theme: ThemeData(
        //テーマ（色とか指定できる

        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => StartPage(),
        '/play': (BuildContext context) => RoadSignPage(),
      },
//      home: StartPage(),
    );
  }
}

class RoadSignPage extends StatelessWidget {
  const RoadSignPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Road Sign Quiz'),
        ),
        body: SafeArea(
          child: RoadSignQuiz(),
        ));
  }
}

class RoadSignQuiz extends StatefulWidget {
  @override
  _RoadSignQuizState createState() => _RoadSignQuizState();
}

class _RoadSignQuizState extends State<RoadSignQuiz> {
  static const int choicesNumber = 4;
  JudgeResult judgeResult = JudgeResult.none;
  List<String> keys = AppSettings.roadSignList.keys.toList();
  String question = ''; //問題
  List<String> choices = []; //選択肢
  List<bool> isSelectedList = [false, false, false, false];
  bool canAnswer = true;
  late Timer autoNextQuestion;

  @override
  void initState() {
    super.initState();
    nextQuestion();
    selectChoices(question);
    judgeResult = JudgeResult.none;
    isSelectedList = [false, false, false, false];
    canAnswer = true;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: SvgPicture.asset(AppSettings.roadSignList[question]!),
              ),
              Center(child: JudgeResultText(judgeResult)),
              ChoiceButton(
                label: choices[0],
                onPressed: () {
                  onAnswered(0);
                },
                canAnswer: canAnswer,
                isSelected: isSelectedList[0],
                isCorrect: question == choices[0],
              ),
              ChoiceButton(
                label: choices[1],
                onPressed: () {
                  onAnswered(1);
                },
                canAnswer: canAnswer,
                isSelected: isSelectedList[1],
                isCorrect: question == choices[1],
              ),
              ChoiceButton(
                label: choices[2],
                onPressed: () {
                  onAnswered(2);
                },
                canAnswer: canAnswer,
                isSelected: isSelectedList[2],
                isCorrect: question == choices[2],
              ),
              ChoiceButton(
                label: choices[3],
                onPressed: () {
                  onAnswered(3);
                },
                canAnswer: canAnswer,
                isSelected: isSelectedList[3],
                isCorrect: question == choices[3],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                child: Text('やめる'),
                onPressed: () {
                  setState(() {
                    autoNextQuestion.cancel();
                    Navigator.of(context).pop();
                  });
                },
              ),
              ElevatedButton(
                child: Text('次へ'),
                onPressed: () {
                  nextButton();
                  autoNextQuestion.cancel();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  //次へボタンの処理
  void nextButton() {
    setState(() {
      nextQuestion();
      selectChoices(question);
      judgeResult = JudgeResult.none;
      isSelectedList = [false, false, false, false];
      canAnswer = true;
    });
  }

  //解答した後の処理
  void onAnswered(int index) {
    setState(() {
      judge(question, choices[index]);
      isSelectedList[index] = true;
      canAnswer = false;
    });
    autoNextQuestion = Timer(Duration(seconds: 5), nextButton);
  }

  //正解不正解の文字表示
  void judge(String text, String answer) {
    if (text == answer)
      judgeResult = JudgeResult.correct;
    else
      judgeResult = JudgeResult.incorrect;
  }

  //問題文を更新
  void nextQuestion() {
    question = keys[Random().nextInt(keys.length)];
  }

  //選択肢の処理
  void selectChoices(String question) {
    List<String> tempChoices = [];
    tempChoices.add(question);
    tempChoices.addAll(makeDummyChoices(question));
    tempChoices.shuffle();
    choices = tempChoices;
  }

  //不正解の選択肢を用意する
  List<String> makeDummyChoices(String question) {
    List<String> dummyChoices = [];
    List<String> tempKeys = []..addAll(keys);
    tempKeys.remove(question);
    tempKeys.shuffle();
    for (int i = 0; i < choicesNumber - 1; i++) {
      dummyChoices.add(tempKeys[i]);
    }
    return dummyChoices;
  }
}
