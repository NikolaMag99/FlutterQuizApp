import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      // color: Colors.blue,
      child: RaisedButton(
        onPressed: selectHandler,
        child: Text('Nadal'),
        textColor: Colors.white,
        color: Colors.blue,
      ),
    );
  }
}
