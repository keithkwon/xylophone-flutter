import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Expanded buildKey(Color color, int noteNumber) {
      return Expanded(
        child: TextButton(
            child: Text(''),
            style: TextButton.styleFrom(backgroundColor: color),
            onPressed: () {
              final player = AudioCache();
              player.play('note$noteNumber.wav');
              print('pressed');
            }),
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildKey(Colors.red, 1),
                  buildKey(Colors.orange, 2),
                  buildKey(Colors.yellow, 3),
                  buildKey(Colors.green, 4),
                  buildKey(Colors.blue, 5),
                  buildKey(Colors.blue.shade900, 6),
                  buildKey(Colors.purple, 7)
                ]),
          ),
        ),
      ),
    );
  }
}
