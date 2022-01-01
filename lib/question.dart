import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  // If we passed a object with question text then it would be named arg
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
