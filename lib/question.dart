import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionTest;

  Question(this.questionTest);

  @override
  Widget build(BuildContext context) {

    return Text(questionTest);
     
  }
}