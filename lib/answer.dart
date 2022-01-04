import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function buttonPressHandler;
  final String answerText;

  Answer(this.buttonPressHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.amber[300],
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: buttonPressHandler,
      ),
    );
  }
}
