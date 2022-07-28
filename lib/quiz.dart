import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  //variables
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  //Quiz constructor
  Quiz({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          //recieving the question index and text
          questions[questionIndex]['questionText'] as String,
        ),
        //pulling forward the list of answers into the list of questions to be used
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(answer['score']), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
