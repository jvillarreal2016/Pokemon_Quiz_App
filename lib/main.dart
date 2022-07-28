import 'package:flutter/material.dart';

import './quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite pokemon type?',
      'answers': ['Fire', 'Water', 'Electric', 'Grass'],
    },
    {
      'questionText': 'Who\'s your favorite legendary?',
      'answers': ['Kyogre', 'Raquaza', 'Groudon', 'Latias'],
    },
    {
      'questionText': 'Who\'s the best Pokemon Champion?',
      'answers': ['Lance', 'Cynthia', 'Steven', 'Gary'],
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("We have more questions!");
    } else {
      print("There are no more questions");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pokemon Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
