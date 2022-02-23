import './question.dart';
import './answer.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // UnimplementedError();
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //const MyApp({Key? key}) : super(key: key);
  var _questionIndex = 0;
  void answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    //print(_questionIndex);
  }

  var question = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Dog', 'Cat', 'Fish', 'Rabbit'],
    },
    {
      'questionText': 'Who\'s your favorite teacher?',
      'answers': ['Ivaniuk', 'Slobodianiuk', 'Fedorchuk', 'Ponedilok'],
    },
  ];
  //Widget q = Answer(answerQuestion , 'd');
  // void proba() {

  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Моя перша програма'),
        ),
        body: Column(
          children: <Widget>[
            Question(question[_questionIndex]['questionText'].toString()),

            ...(question[_questionIndex]['answers'] as List<String>)
                .map((answe1r) {
              return Answer(answerQuestion, answe1r);
            }).toList(),

            // Answer(answerQuestion),
          ],
        ),
      ),
    );
  }
}
