import 'package:flutter/material.dart';

import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int no){
    final player = AudioCache();
    player.play("note$no.wav");
  }

  Expanded tile({Color color, int soundNo}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(soundNo);
        }, child: null,),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              tile(color: Colors.deepPurple[200], soundNo: 1 ),
              tile(color: Colors.indigo, soundNo: 2),
              tile(color: Colors.blue, soundNo: 3),
              tile(color: Colors.green, soundNo: 4),
              tile(color: Colors.yellow, soundNo: 5),
              tile(color: Colors.orange, soundNo: 6),
              tile(color: Colors.red, soundNo: 7),
            ],
          ),
        ),
      ),
    );
  }
}
