//import material component
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it! \n';
    if (resultScore <= 17) {
      resultText += "Nice";
    } else if (resultScore > 18) {
      resultText += "Hmmm";
    }
    return resultText;
  }

//Widget for display final result based on option choosed by user
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          onPressed: resetHandler,
          child: Text('Restart Quiz'),
          textColor: Colors.blue,
        )
      ],
    ));
  }
}
