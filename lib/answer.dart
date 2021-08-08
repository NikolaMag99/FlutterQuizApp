import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      // color: Colors.blue,
      child: ElevatedButton(
        onPressed: selectHandler,
        child: Text('Nadal'),
      ),
    );
  }
}
