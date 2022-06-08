import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  
  Answer(this.selectHandler,this.answerText);
  // const Answer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:  ElevatedButton(
        style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(Colors.blue) ),
        child: Text(answerText,style: TextStyle(color: Colors.white),),
        onPressed:selectHandler,
      ),

    );
  }
}