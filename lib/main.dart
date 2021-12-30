import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
          Text('Example Question'),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: () => {},
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: () => {},
          ),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: () => {},
          )
        ]),
      ),
    );
  }
}
