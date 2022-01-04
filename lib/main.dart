import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _currentQuestionIndex = 0;

  void _answerQuestion() {
    print('Answer selected!');
    setState(() => _currentQuestionIndex++);
    print('Current question index is ${_currentQuestionIndex}');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Blue', 'Green', 'Red', 'Black', 'Silver', 'White']
      },
      {
        'questionText': 'How old are you?',
        'answers': [
          'None of your business',
          'A basic zoomer',
          'Pretty old',
          '30\'s isn\'t old!'
        ]
      },
      {
        'questionText': 'Do you prefer dessert or entrees?',
        'answers': ['Dessert!', 'Real Food']
      },
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
          Question(questions[_currentQuestionIndex]['questionText']),
          ...(questions[_currentQuestionIndex]['answers'] as List<String>)
              .map((answer) => Answer(_answerQuestion, answer))
              .toList(),
        ]),
      ),
    );
  }
}
