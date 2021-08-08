import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _index = 0;

  void _answerQuestion() {
    setState(() {
      _index = _index + 1;
    });
    print(_index);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Best tennis player?',
      'When Novak Djokovic wins first gnad slam?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('dr Paun'),
        ),
        body: Column(
          children: [
            Question(questions[_index]),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text('Nadal'),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text('Federer'),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text('Djokovic'),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text('Zverev'),
            )
          ],
        ),
      ),
    );
  }
}
