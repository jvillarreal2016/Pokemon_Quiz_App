import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  //variables
  final int resultScore;
  final VoidCallback resetHandler;

  //result constructor
  Result(this.resultScore, this.resetHandler);

  //logic for the result phrase
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
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              resultPhrase, //display result phrase
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              '$resultScore %', //display quiz score
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              child: Text('Restart Quiz '), //restart quiz button
              onPressed: resetHandler,
            )
          ],
        ),
      ),
    );
  }
}
