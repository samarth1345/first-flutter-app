import 'package:flutter/material.dart';
import './question.dart';
import './Answer.dart';
import './quizpage.dart';
import './bound.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionindex = 0;
  var questions = [
    {
      'questiontext': 'What is your favourite colour',
      'answers': [
        {'text': 'Red', 'score': 80},
        {'text': 'Green', 'score': 100},
        {'text': 'Blue', 'score': 90},
        {'text': 'Black', 'score': 50}
      ]
    },
    {
      'questiontext': 'What is your favourite animal',
      'answers': [
        {'text': 'Rabbit', 'score': 80},
        {'text': 'Snake', 'score': 50},
        {'text': 'Elephant', 'score': 90},
        {'text': 'Tiger', 'score': 100},
      ]
    },
    {
      'questiontext': 'Who is your favourite cricketer',
      'answers': [
        {'text': 'Virat', 'score': 100},
        {'text': 'Rohit', 'score': 80},
        {'text': 'Dhoni', 'score': 90},
        {'text': 'None', 'score': 50},
      ]
    }
  ];
  int finalscore = 0;
  void Answerquestion(int score) {
    finalscore += score;
    setState(() {
      questionindex = questionindex + 1;
    });
    print(questionindex);
  }

  void resetbutton() {
    setState(() {
      finalscore = 0;
      questionindex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //scaffold makes a template for the app
        home: Scaffold(
      appBar: AppBar(
        title: Text('My first App'),
      ),
      //column for having elements in vertical
      body: questionindex < 3
          ? quiz(
              questions: questions,
              questionindex: questionindex,
              Answerquestion: Answerquestion)
          : Outofbound(finalscore, resetbutton),
    ));
  }
}
