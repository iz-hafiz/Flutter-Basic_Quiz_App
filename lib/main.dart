import 'package:flutter/material.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyFirstAppState();
  }
}

class MyFirstAppState extends State<MyFirstApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex++;
      if (questionIndex >= 2) {
        questionIndex = 0;
      }
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your favourite colour?',
      'what\'s your favourite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: () => print("Answer 2 chosen!"),
            ),
            RaisedButton(
                child: Text("Answer 3"),
                onPressed: () {
                  print("Answer 3 chosen!");
                }),
          ],
        ),
      ),
    );
  }
}
