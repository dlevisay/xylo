import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playsound(int sound) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$sound.wav'),
    );
  }

  Expanded buildKey({required Color noteColor, required int sound}) {
    return Expanded(
      child: TextButton(
          style: TextButton.styleFrom(backgroundColor: noteColor),
          onPressed: () {
            playsound(sound);
          },
          child: const ButtonBar()),
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                buildKey(sound: 1, noteColor: Colors.red),
                buildKey(sound: 2, noteColor: Colors.green),
                buildKey(sound: 3, noteColor: Colors.blue),
                buildKey(sound: 4, noteColor: Colors.yellow),
                buildKey(sound: 5, noteColor: Colors.pink),
                buildKey(sound: 6, noteColor: Colors.purple),
                buildKey(sound: 7, noteColor: Colors.orange),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
