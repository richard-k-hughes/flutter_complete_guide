import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _currentQuestionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    // print('Answer selected!');
    _totalScore += score;
    setState(() => _currentQuestionIndex++);
    // print('Current question index is ${_currentQuestionIndex}');
  }

  void _resetQuiz() {
    setState(() {
      _currentQuestionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Since this is declared and instantiated then never changed we use const
    // "compile time constant"
    // inside of the baby components they would be final rather than const
    // they wont be modified in the component but wont be defined until runtime
    const _questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': [
          {'text': 'Blue', 'score': 1},
          {'text': 'Green', 'score': 2},
          {'text': 'Red', 'score': 3},
          {'text': 'Black', 'score': 4},
          {'text': 'Silver', 'score': 5},
          {'text': 'White', 'score': 4},
        ]
      },
      {
        'questionText': 'How old are you?',
        'answers': [
          {'text': 'None of your business', 'score': 4},
          {'text': 'A basic zoomer', 'score': 2},
          {'text': 'Pretty old', 'score': 2},
          {'text': '30\'s isn\'t old!', 'score': 2},
        ]
      },
      {
        'questionText': 'Do you prefer dessert or entrees?',
        'answers': [
          {'text': 'Dessert!', 'score': 2},
          {'text': 'Real Food', 'score': 1}
        ]
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
        body: _currentQuestionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _currentQuestionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
