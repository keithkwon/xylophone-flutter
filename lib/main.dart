import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Widget buildKey(string color, int noteNumber) {
    return Expanded(
      child: TextButton(
          child: Text(''),
          style: TextButton.styleFrom(backgroundColor: Colors.$color),
          onPressed: () {
            final player = AudioCache();
            player.play('note3.wav');
            print('pressed');
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: TextButton(
                        child: Text(''),
                        style:
                            TextButton.styleFrom(backgroundColor: Colors.red),
                        onPressed: () {
                          final player = AudioCache();
                          player.play('note1.wav');
                          print('pressed');
                        }),
                  ),
                  Expanded(
                    child: TextButton(
                        child: Text(''),
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.orange),
                        onPressed: () {
                          final player = AudioCache();
                          player.play('note2.wav');
                          print('pressed');
                        }),
                  ),
                  Expanded(
                    child: TextButton(
                        child: Text(''),
                        style:
                            TextButton.styleFrom(backgroundColor: Colors.green),
                        onPressed: () {
                          final player = AudioCache();
                          player.play('note4.wav');
                          print('pressed');
                        }),
                  ),
                  Expanded(
                    child: TextButton(
                        child: Text(''),
                        style:
                            TextButton.styleFrom(backgroundColor: Colors.blue),
                        onPressed: () {
                          final player = AudioCache();
                          player.play('note5.wav');
                          print('pressed');
                        }),
                  ),
                  Expanded(
                    child: TextButton(
                        child: Text(''),
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.blue.shade900),
                        onPressed: () {
                          final player = AudioCache();
                          player.play('note6.wav');
                          print('pressed');
                        }),
                  ),
                  Expanded(
                    child: TextButton(
                        child: Text(''),
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.purple),
                        onPressed: () {
                          final player = AudioCache();
                          player.play('note7.wav');
                          print('pressed');
                        }),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
