import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Result extends StatelessWidget {
  // const Result({Key? key}) : super(key: key);
  final int resultScore;
  final VoidCallback restartFuncsion;

  Result(
  this.resultScore,
  this.restartFuncsion
  );

  String get resultPhrase{
    String resultText;
    if(resultScore<=6){
      resultText="innocent";
    }
    else if (resultScore<=15){
            resultText="kinda sus";
    }
    else if(resultScore<=20){
      resultText="very sus boi";
    }
    else{
        resultText="SUS!!!!!!";
    }
    return  resultText;
  }

  @override
  Widget build(BuildContext context) {
    return   Center(
    child: Column(
      children: [Text
      (
        resultPhrase,
        textAlign: TextAlign.center,
        style:TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
  ),
  ),
  OutlinedButton(
     child: Text(
       "restart",
     ),
    style: TextButton.styleFrom(
    primary: Colors.red,
    side: BorderSide(color: Colors.black)
    ),
    onPressed:restartFuncsion,
  )
      ],
    )
  );
  }
}