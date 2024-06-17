import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    const MaterialApp(
      home: BallPage(),
    ),
  );
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballValue = 1;
  void ballNum() {
    setState(() {
      ballValue = Random().nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        ballNum();
      },
      child: Image.asset('images/ball$ballValue.png'),
    );
  }
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade600,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Center(
          child: Text(
            'Ask Me Anything',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: const Center(
        child: Ball(),
      ),
    );
  }
}
