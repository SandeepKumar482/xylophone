import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void play(int n) {
    final player = AudioCache();
    player.play('note$n.wav');
  }

  Expanded buildKey({required Color color, required int sound}) {
    return Expanded(
      flex: 1,
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color, elevation: 7),

        onPressed: () {
          play(sound);
        },
        child: Text(' '),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, sound: 1),
              buildKey(color: Colors.orange, sound: 2),
              buildKey(color: Colors.yellow, sound: 3),
              buildKey(color: Colors.green, sound: 4),
              buildKey(color: Colors.teal, sound: 5),
              buildKey(color: Colors.lightBlue, sound: 6),
              buildKey(color: Colors.blueAccent, sound: 7)
            ],
          ),
        ),
      ),
    );
  }
}
