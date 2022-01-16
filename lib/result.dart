import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetHandler;

  Result(this.totalScore, this.resetHandler);

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
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            child: Text('Restart Quiz!'),
            style: TextButton.styleFrom(primary: Colors.orange[700]),
          )
        ],
      ),
    );
  }
}
