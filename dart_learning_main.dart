import 'package:flutter/material.dart';

//void main() {
//   runApp(Myapp());
//}

void main() => runApp(Myapp());

void pressthebutton() {
  print('you pressed a button');
}

class Myapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyappState();
  }
}

class MyappState extends State<Myapp> {
  var questionindex = 0;

  void answerquestion() {
    setState(() {
      questionindex = questionindex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'What\'s your favourite style?',
      'Are you a motherfucker?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('fuckyou!'),
        ),
        body: Column(
          children: [
            Text(
              question[questionindex],
            ),
            RaisedButton(
              child: Text('This is the answer 1'),
              onPressed: answerquestion,
            ),
            RaisedButton(
              child: Text('This is the answer 2'),
              onPressed: answerquestion,
            ),
            RaisedButton(
              child: Text('This is the answer 3'),
              onPressed: answerquestion,
            ),
            RaisedButton(
              child: Text('This is the answer 4'),
              onPressed: answerquestion,
            ),
          ],
        ),
      ),
    );
  }
}
