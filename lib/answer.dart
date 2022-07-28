import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  //variables
  final VoidCallback selectHandler;
  final String answerText;

  //answer constructor
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.blue, onPrimary: Colors.white),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
