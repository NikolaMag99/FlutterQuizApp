import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var index = 0;

  void answerQuestion() {
    setState(() {
      index = index + 1;
    });
    print(index);
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
            Text(questions[index]),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Nadal'),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Federer'),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Djokovic'),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Zverev'),
            )
          ],
        ),
      ),
    );
  }
}
