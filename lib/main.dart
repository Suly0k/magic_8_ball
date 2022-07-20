import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const EightBall());
}

class EightBall extends StatelessWidget {
  const EightBall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent.shade700,
          title: const Text('Ask Me Anything'),
        ),
        body: const Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          setState(
            () {
              ballNumber = Random().nextInt(5) + 1;
            },
          );
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
