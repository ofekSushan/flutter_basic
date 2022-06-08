import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  // const Quiz({Key? key}) : super(key: key)
  final List<Map<String , Object>> questions ;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
  required this.questions,
  required this.questionIndex,
  required this.answerQuestion
  });

  @override
  Widget build(BuildContext context) {
    return 
      Column(
            children: [
              Question(
              questions[questionIndex]["questionText"].toString()
              ),
              ...(questions[questionIndex]["answers"] as List<Map<String , Object>>).map((answer){ 
              return  Answer( () =>  answerQuestion( answer['score'] ),answer['text'].toString());
              }).toList()
              ,
              // const Spacer(),
              // Row(children: [ElevatedButton(onPressed: () {}, child: Text('OFEK'))],crossAxisAlignment: CrossAxisAlignment.center),
             
            ],

          );
  } 
}