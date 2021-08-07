import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
          children: <Widget>[
            Text('The question!'),
            ElevatedButton(
              onPressed: null,
              child: Text('Nadal'),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Federer'),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Djokovic'),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Zverev'),
            )
          ],
        ),
      ),
    );
  }
}
