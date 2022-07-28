import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 50) {
      resultText = 'You call yourself a trainer?';
    } else if (resultScore <= 70) {
      resultText = 'You have some studying to do';
    } else if (resultScore <= 90) {
      resultText = 'Great job, trainer!';
    } else {
      resultText = 'You are a Pokemon Master!!';
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
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            child: Text('Restart Quiz '), 
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
