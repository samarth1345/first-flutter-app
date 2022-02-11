import 'package:flutter/material.dart';
import './question.dart';
import './Answer.dart';

class quiz extends StatelessWidget {
  List<Map<String, Object>> questions;
  final int questionindex;
  final void Function(int) Answerquestion;
  quiz(
      {required this.questions,
      required this.questionindex,
      required this.Answerquestion});
  @override
  Widget build(BuildContext context) {
    return Column(
      //children is a array of widgets to be present in column array
      children: [
        question(questions[questionindex]['questiontext']?.toString() ?? ''),
        //three dots to spread list as we are putting a list into list
        ...(questions[questionindex]['answers'] as List<Map<String, Object>>)
            .map((answers) {
          return Answer(() => Answerquestion(answers['score'] as int),
              answers['text'] as String);
        }).toList(),
      ],
    );
  }
}
