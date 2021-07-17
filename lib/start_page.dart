import 'package:flutter/material.dart';

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
          child: ElevatedButton(
            child: Text('はじめる!'),
            onPressed: () {
              Navigator.of(context).pushNamed('/play');
            },
          ),
        ),
      ),
    );
  }
}
