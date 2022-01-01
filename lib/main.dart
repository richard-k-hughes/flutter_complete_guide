import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _currentQuestionIndex = 0;

  void answerQuestion() {
    print('Answer selected!');
    setState(() => _currentQuestionIndex++);
    print('Current question index is ${_currentQuestionIndex}');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'How old are you?',
      'Do you prefer dessert or entrees?'
    ];
    // var questionWidgetList = <Widget>[];
    // questions.forEach((question) => questionWidgetList.add(Text(question)));
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
          backgroundColor: Color(0xFF5DBB63),
        ),
        body: Column(children: [
          Question(questions[_currentQuestionIndex]),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: answerQuestion,
          )
        ]),
      ),
    );
  }
}
