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
      // ignore: deprecated_member_use
      child: RaisedButton(
        onPressed: selectHandler,
        child: Text(answerText),
        textColor: Colors.white,
        color: Colors.blue,
      ),
    );
  }
}
