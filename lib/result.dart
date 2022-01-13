import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;

  Result(this.totalScore);

  String get resultPhrase {
    var resultText =
        'Thank you for completing our survey! Your score is: ${totalScore}\n';
    if (totalScore <= 5) {
      resultText += 'You are very basic!';
    } else if (totalScore <= 8) {
      resultText += 'You are a bit interesting huh!';
    } else {
      resultText += 'You are wild!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
