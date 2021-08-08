import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText;
    if (resultScore >= 200) {
      resultText = 'Greate job! Best score!';
    } else if (resultScore > 100 && resultScore < 200) {
      resultText = 'Good job!';
    } else {
      resultText = 'Not so good job!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: resetHandler,
            child: Text('Restart'),
          )
        ],
      ),
    );
  }
}
