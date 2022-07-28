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
  final _questions = const [
    {
      'questionText':
          'To begin, you can choose from three starting Pokemon in "Pokemon Red and Blue". How many different starting Pokemon are there in "Pokemon Yellow"?',
      'answers': [
        {'text': 'One', 'score': 10},
        {'text': 'Two', 'score': 0},
        {'text': 'Three', 'score': 0},
        {'text': 'Four', 'score': 0},
      ],
    },
    {
      'questionText':
          'In "Pokemon Red and Blue", your rival will choose a Pokemon that has a type advantage against your own. What Pokemon does he choose in "Pokemon Yellow"?',
      'answers': [
        {'text': 'Charmander', 'score': 0},
        {'text': 'Bulbasaur', 'score': 0},
        {'text': 'Squirtle', 'score': 10},
        {'text': 'Eevee', 'score': 0},
      ],
    },
    {
      'questionText':
          'One change in "Pokemon Yellow" is the addition of Jessie and James. Where can you not battle this duo?',
      'answers': [
        {'text': 'Mt. Moon', 'score': 0},
        {'text': 'Pokemon Tower', 'score': 0},
        {'text': 'Game Corner', 'score': 0},
        {'text': 'Seafoam Island', 'score': 10},
      ],
    },
    {
      'questionText':
          'Is there a change in the nurses at the Pokecenters between "Pokemon Red and Blue" and "Pokemon Yellow"?',
      'answers': [
        {'text': 'True', 'score': 10},
        {'text': 'False', 'score': 0},
      ],
    },
    {
      'questionText':
          'Both "Pokemon Red and Blue" have Pokemon that are exclusive to their games. Which Pokemon found in at least one of these games was not found in the wild in Pokemon Yellow?',
      'answers': [
        {'text': 'Weedle', 'score': 10},
        {'text': 'Venonat', 'score': 0},
        {'text': 'Sandshrew', 'score': 0},
        {'text': 'Farfetch\'d', 'score': 0},
      ],
    },
    {
      'questionText':
          'Although you\'ll probably find the Pokemon in at least on of the versions of the games, there are some that can be found in all three games. Which Pokemon is found in the exact same place in "Pokemon Red, Yellow, and Blue"?',
      'answers': [
        {'text': 'Diglett', 'score': 10},
        {'text': 'Mankey', 'score': 0},
        {'text': 'Growlithe', 'score': 0},
        {'text': 'Farfetch\'d', 'score': 0},
      ],
    },
    {
      'questionText':
          'How many more Pokemon does Lt. Surge have in "Pokemon Blue" than in Pokemon Yellow?',
      'answers': [
        {'text': 'One', 'score': 0},
        {'text': 'Two', 'score': 10},
        {'text': 'Three', 'score': 0},
        {'text': 'Zero', 'score': 0},
      ],
    },
    {
      'questionText':
          'One popular "Pokemon Yellow" exclusive is the Surfing Pikachu game. Where can this be accessed?',
      'answers': [
        {'text': 'Cinnabar Island', 'score': 0},
        {'text': 'Fuchsia City', 'score': 10},
        {'text': 'Pallet Town', 'score': 0},
        {'text': 'Vermilion City', 'score': 0},
      ],
    },
    {
      'questionText':
          'Which Pokemon will your rival always have in the final battle (in all three games)?',
      'answers': [
        {'text': 'Rhydon', 'score': 0},
        {'text': 'Alakazam', 'score': 10},
        {'text': 'Sandslash', 'score': 0},
        {'text': 'Pidgeot', 'score': 0},
      ],
    },
    {
      'questionText':
          'Unlike in "Pokemon Red and Blue", "Pokemon Yellow" can be traded with Pokemon in "Pokemon Gold and Silver"?',
      'answers': [
        {'text': 'True', 'score': 0},
        {'text': 'False', 'score': 10},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
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
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
