//import material component
import 'package:flutter/material.dart';

//import another widget in lib
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

//widget for quiz builder.  Import Question widget to display question
//This widget only works as holder and pass data to Answer widget
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        questions[questionIndex]['questionText'],
      ),
      ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(() => answerQuestion(answer['score']), answer['text']);
      }).toList()
    ]);
  }
}
