import 'package:flutter/material.dart';
import 'package:flutter_basic/result.dart';

import "./quiz.dart";
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }

}
class _MyAppState extends State <MyApp> {
    final questions = const [
      {"questionText":"What's your favorite among us color?",
      "answers":[
       {"text":"black","score":10},
       {"text":"red","score":5},
       {"text":"blue","score":3},
       {"text":"green","score":1}
       ],},

       {"questionText":"What's your favorite animal?",
       "answers":[
        {"text":"Cat","score":10},
        {"text":"Dog","score":5},
        {"text":"Snake","score":3},
        {"text":"Rabbit","score":1},
        ],},

      {"questionText":"What's your reason to live?",
      "answers":[
      {"text":"Eat","score":10},
      {"text":"Sleep","score":5},
      {"text":"Among us","score":3},
      {"text":"I dont have :^( " , "score":1},
      ],},
    ];
  var _questionIndex = 0;
  var _totalScore=0;

void _restartQuiz(){
    setState(() {
    _questionIndex = 0;
    _totalScore=0;
});
}

  void _answerQuestion(int score) {

    _totalScore+=score;

      setState(() {
    _questionIndex ++;
      });
    if(_questionIndex<questions.length) {
    print("nice answer bro");
    }
    else{
      print("dude wtf");
    }
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title:  Row(
            children: [
              const Text("yo"),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          )),
          body:
          // if statement
          _questionIndex<questions.length ?

          Quiz(
          answerQuestion: _answerQuestion,
          questionIndex: _questionIndex,
          questions: questions,
          )

          // else
          :Result(_totalScore,_restartQuiz),
          ),
    );
  }
}
