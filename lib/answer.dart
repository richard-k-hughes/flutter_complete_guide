import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback buttonPressHandler;
  final String answerText;

  Answer(this.buttonPressHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.amber[300], onPrimary: Colors.white),
        child: Text(answerText),
        onPressed: buttonPressHandler,
      ),
    );
  }
}
