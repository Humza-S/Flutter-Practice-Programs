import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class Ball extends StatefulWidget {
  Ball({Key key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          onPressed: () {
            setState(
              () {
                ballNumber = Random().nextInt(4) + 1;
                print(ballNumber);
              },
            );
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}

class BallPage extends StatelessWidget {
  const BallPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade600,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask Me Anything'),
      ),
      body: Ball(),
    );
  }
}
