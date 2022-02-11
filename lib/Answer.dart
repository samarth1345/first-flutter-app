import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selecthandler;
  final String Answertext;
  Answer(this.selecthandler, this.Answertext);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(Answertext),
        onPressed: selecthandler,
        color: Colors.blue,
        textColor: Colors.blue[50],
      ),
    );
  }
}
