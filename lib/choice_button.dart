import 'package:flutter/material.dart';

class ChoiceButton extends StatelessWidget {
  const ChoiceButton({
    Key? key,
    required this.label,
    required this.onPressed,
    required this.canAnswer,
    required this.isSelected,
    required this.isCorrect,
  }) : super(key: key);

  final String label;
  final void Function() onPressed;
  final bool canAnswer;
  final bool isSelected;
  final bool isCorrect;

  @override
  Widget build(BuildContext context) {
    if (canAnswer) {
      return ElevatedButton(
        child: Text(label),
        onPressed: onPressed,
      );
    } else {
      if (isSelected) {
        if (isCorrect) {
          return ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.green, //ボタンの背景色
                side: BorderSide(
                  width: 5.0,
                  color: Colors.yellow,
                )),
            child: Text(label),
            onPressed: () {},
          );
        } else {
          return ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.red, //ボタンの背景色
                side: BorderSide(
                  width: 5.0,
                  color: Colors.yellow,
                )),
            child: Text(label),
            onPressed: () {},
          );
        }
      } else {
        if (isCorrect) {
          return ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.green, //ボタンの背景色
            ),
            child: Text(label),
            onPressed: () {},
          );
        } else {
          return ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.grey, //ボタンの背景色
            ),
            child: Text(label),
            onPressed: () {},
          );
        }
      }
    }
  }
}
