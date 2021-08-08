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

  final questions = const [
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

  void _answerQuestion() {
    if (_index < questions.length) {
      print('nesto');
    }
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
        body: _index < questions.length
            ? Column(
                children: [
                  Question(questions[_index]['questionText'] as String),
                  ...(questions[_index]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text('End of Quiz!'),
              ),
      ),
    );
  }
}
