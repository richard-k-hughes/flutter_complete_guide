import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  // If we passed a object with question text then it would be named arg
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // by default Text only has width that it needs,
      // so we put it inside infinite width container object
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
