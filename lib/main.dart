import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftSideNum = 1;
  int rightSideNum = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
                child: FlatButton(
              onPressed: () {
                setState(() {
                  leftSideNum = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$leftSideNum.png'),
            )),
            Expanded(
                child: FlatButton(
              onPressed: () {
                setState(() {
                  rightSideNum = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$rightSideNum.png'),
            ))
          ],
        ),
        FlatButton(
          onPressed: () {
            setState(() {
              leftSideNum = Random().nextInt(6) + 1;
              rightSideNum = Random().nextInt(6) + 1;
            });
          },
          child: Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 16, horizontal: 25),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Text('Roll',
                  style: TextStyle(
                    fontSize: 20,
                  )),
            ),
          ),
        )
      ],
    );
  }
}
