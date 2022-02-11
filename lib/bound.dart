import 'package:flutter/material.dart';

class Outofbound extends StatelessWidget {
  final int score;
  final VoidCallback resetbutton;
  Outofbound(this.score, this.resetbutton);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Your Score is ' + score.toString(),
          style: TextStyle(fontSize: 40),
        ),
        ElevatedButton(
          child: Text('Take the quiz again!'),
          onPressed: resetbutton,
        )
      ],
    );
  }
}
