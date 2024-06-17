import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('key$soundNumber.ogg'));
  }

  Expanded buttonCreation({Color color = Colors.white, int soundNumber = 1}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        style: TextButton.styleFrom(backgroundColor: color,
        shape: const BeveledRectangleBorder()),
        child: Text('key$soundNumber'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.teal[300],
          title: Center(
            child: Text(
              "Piano Game ",
              style: TextStyle(
                color: Colors.blue[900],
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buttonCreation(color: Colors.white,soundNumber: 01),
              buttonCreation(color: Colors.black,soundNumber: 02),
              buttonCreation(color: Colors.white,soundNumber: 03),
              buttonCreation(color: Colors.black,soundNumber: 04),
              buttonCreation(color: Colors.white,soundNumber: 05),
              buttonCreation(color: Colors.black,soundNumber: 06),
              buttonCreation(color: Colors.white,soundNumber: 07),
              buttonCreation(color: Colors.black,soundNumber: 08),
              buttonCreation(color: Colors.white,soundNumber: 09),
              buttonCreation(color: Colors.black,soundNumber: 10),
              buttonCreation(color: Colors.white,soundNumber: 11),
              buttonCreation(color: Colors.black,soundNumber: 12),
              buttonCreation(color: Colors.white,soundNumber: 13),
            ],
          ),
        ),
      ),
    );
  }
}
