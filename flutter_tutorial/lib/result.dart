import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it';
    if (resultScore > 15) {
      resultText = 'nice!';
    } else if (resultScore >= 5) {
      resultText = 'yes.';
    } else {
      resultText = 'hyi.';
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
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        ElevatedButton(onPressed: resetHandler, child: Text('Restart'))
      ],
    ));
  }
}
