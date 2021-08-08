import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _index = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'Best tennis player?',
      'answers': [
        {'text': 'Djokovic', 'score': 100},
        {'text': 'Federer', 'score': 60},
        {'text': 'Nadal', 'score': 30},
        {'text': 'Zverev', 'score': 0},
      ],
    },
    {
      'questionText': 'When Novak Djokovic wins first gnad slam?',
      'answers': [
        {'text': '2008', 'score': 100},
        {'text': '2009', 'score': 40},
        {'text': '2010', 'score': 10},
        {'text': '2012', 'score': 0},
      ],
    },
    {
      'questionText': 'Most weeks on 1st place?',
      'answers': [
        {'text': 'Sampras', 'score': 20},
        {'text': 'Federer', 'score': 50},
        {'text': 'Nadal', 'score': 0},
        {'text': 'Djokovic', 'score': 100},
      ],
    }
  ];

  void _resetQuiz() {
    setState(() {
      _index = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _index = _index + 1;
    });
    print(_index);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('dr Paun'),
        ),
        body: _index < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                index: _index,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
