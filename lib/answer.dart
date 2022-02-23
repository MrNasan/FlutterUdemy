import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const Answer({Key? key}) : super(key: key);

  final Function selecHandler;
  final String answerText;
  Answer(this.selecHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: selecHandler,
        child: Text(answerText),
      ),
    );
  }
}
