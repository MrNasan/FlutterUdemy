import 'package:flutter/material.dart';
// import 'package:flutter_complete_guide/result.dart';
import './quiz.dart';
import './result.dart';

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
  final _question = const [
    {
      'questionText': 'What\'s yor favorite color?',
      'answer': [
        {'answerText': 'Black', 'score': 10},
        {'answerText': 'White', 'score': 0},
        {'answerText': 'Pink', 'score': 7},
        {'answerText': 'Blue', 'score': 5},
      ],
    },
    {
      'questionText': 'What\'s yor favorite animal?',
      'answer': [
        {'answerText': 'Horse', 'score': 5},
        {'answerText': 'Bee', 'score': 7},
        {'answerText': 'Dog', 'score': 10},
        {'answerText': 'Seal', 'score': 9},
      ],
    },
    {
      'questionText': 'who\'s the most handsome?',
      'answer': [
        {'answerText': 'Nasan', 'score': 100},
        {'answerText': 'Nasan', 'score': 100},
        {'answerText': 'Nasan', 'score': 100},
        {'answerText': 'Nasan', 'score': 100},
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
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    if (_questionIndex < _question.length) {
      print('We have more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _question.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                question: _question,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
