import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent.shade400,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.redAccent.shade700,
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
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  int onPressLeftDice() {
    leftDiceNumber = Random().nextInt(6) + 1;
    return leftDiceNumber;
  }

  int onPressRightDice() {
    rightDiceNumber = Random().nextInt(6) + 1;
    return rightDiceNumber;
  }

  void pressDice() {
    onPressLeftDice();
    onPressRightDice();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  pressDice();
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  pressDice();
                });
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
