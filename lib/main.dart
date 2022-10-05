import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(MusicalApp());

class MusicalApp extends StatelessWidget {
  const MusicalApp({super.key});

  void playSound(int suoundplay) {
    final assetsAudioPlayer = AssetsAudioPlayer();

    assetsAudioPlayer.open(
      Audio("assets/note$suoundplay.wav"),
    );
  }

  Expanded buildKey(
      {required Color backgroundColor, required int soundNumber}) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          playSound(soundNumber);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor, // Background color
        ),
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(backgroundColor: Colors.red, soundNumber: 1),
              buildKey(backgroundColor: Colors.blue, soundNumber: 2),
              buildKey(backgroundColor: Colors.teal, soundNumber: 3),
              buildKey(backgroundColor: Colors.green, soundNumber: 4),
              buildKey(backgroundColor: Colors.yellow, soundNumber: 5),
              buildKey(backgroundColor: Colors.orange, soundNumber: 6),
              buildKey(backgroundColor: Colors.pink, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
