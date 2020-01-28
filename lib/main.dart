import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playnotes(int noteNo) {
    final player = AudioCache();
    player.play('note$noteNo.wav');
  }

  Expanded buildKey({int noteNo, Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playnotes(noteNo);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(noteNo: 1, color: Colors.red),
              buildKey(noteNo: 2, color: Colors.orange),
              buildKey(noteNo: 3, color: Colors.yellow),
              buildKey(noteNo: 4, color: Colors.green),
              buildKey(noteNo: 5, color: Colors.blue),
              buildKey(noteNo: 6, color: Colors.indigo),
              buildKey(noteNo: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
