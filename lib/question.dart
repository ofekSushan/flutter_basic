import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionTest;

  Question(this.questionTest);

  @override
  Widget build(BuildContext context) {

    return Container(
    width: double.infinity,
    margin: const EdgeInsets.all(10), 
    child: Text(questionTest,
    style: const TextStyle(fontSize: 28),
    textAlign: TextAlign.center,
    ),
    );
     
  }
}