import 'package:flutter/material.dart';

import './question.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }

}
class _MyAppState extends State <MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
    _questionIndex = 1;
    });
    print("nice answer bro");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite among us color?",
      "What's your favorite animal"
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text("yo")),
          body: Column(
            children: [
              Question(questions[_questionIndex]),
              RaisedButton(onPressed: _answerQuestion, child: Text("answer 1")),
              RaisedButton(
                  onPressed: () => {
                 setState(() {
                  _questionIndex = 0;}),
                  print("wrong")},
                  child: Text("answer 2")),
              RaisedButton(onPressed: _answerQuestion, child: Text("answer 3")),
            ],
          )),
    );
  }
}
