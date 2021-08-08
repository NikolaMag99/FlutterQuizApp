import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
      {
        'questionText': 'Best tennis player?',
        'answers': ['Djokovic', 'Federer', 'Nadal', 'Zverev'],
      },
      {
        'questionText': 'When Novak Djokovic wins first gnad slam?',
        'answers': ['2008', '2007', '2009', '2012']
      },
      {
        'questionText': 'Most weeks on 1st place?',
        'answers': ['Federer', 'Nadal', 'Sampras', 'Djokovic']
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('dr Paun'),
        ),
        body: Column(
          children: [
            Question(questions[_index]['questionText'] as String),
            ...(questions[_index]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
