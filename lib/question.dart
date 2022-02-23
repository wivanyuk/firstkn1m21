import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _questionText;
  //const Question({Key? key, required this.questionText}) : super(key: key);
  Question(this._questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        _questionText,
        style: TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
    );
  }
}
