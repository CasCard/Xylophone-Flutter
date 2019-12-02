import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

final player = AudioCache();
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSoundNumber(int soundNumber) {
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey(int key, Color color) {
    return Expanded(
        child: FlatButton(
            onPressed: () {
              playSoundNumber(key);
            },
            color: color));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(1, Colors.blue),
                buildKey(2, Colors.red),
                buildKey(3, Colors.orange),
                buildKey(4, Colors.yellow),
                buildKey(5, Colors.green),
                buildKey(6, Colors.indigo),
                buildKey(7, Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
