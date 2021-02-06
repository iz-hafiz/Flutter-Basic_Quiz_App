import 'package:flutter/material.dart';
import 'package:flutter_tutorial_1/result.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyFirstAppState();
  }
}

class _MyFirstAppState extends State<MyFirstApp> {
  //adding _anything cause it can't be acess by other dart file
  final _questions = [
    {
      'questionText': 'what\'s your favourite colour?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 8},
        {'text': 'Green', 'score': 14},
        {'text': 'White', 'score': 13},
      ],
    },
    {
      'questionText': 'what\'s your favourite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 2},
        {'text': 'Snake', 'score': 8},
        {'text': 'Elephant', 'score': 6},
        {'text': 'Lion', 'score': 5},
      ],
    },
    {
      'questionText': 'who\'s your favourite instructor?',
      'answers': [
        {'text': 'Sio', 'score': 3},
        {'text': 'Mario', 'score': 10},
        {'text': 'Blackio', 'score': 10},
        {'text': 'Tio', 'score': 10},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {});
    _questionIndex = 0;
    _totalScore = 0;
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
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
