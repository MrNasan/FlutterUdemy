import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Result({Key? key}) : super(key: key);
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome!';
    } else if (resultScore <= 12) {
      resultText = 'You are nice!';
    } else if (resultScore <= 16) {
      resultText = 'You are weird!';
    } else {
      resultText = 'You are bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text('Restart'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
