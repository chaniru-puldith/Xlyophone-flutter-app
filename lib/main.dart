import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(XyloApp());
}


class XyloApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildXyloKey(color: Colors.red, soundId: 1),
              buildXyloKey(color: Colors.orange, soundId: 2),
              buildXyloKey(color: Colors.yellow, soundId: 3),
              buildXyloKey(color: Colors.green, soundId: 4),
              buildXyloKey(color: Colors.blue, soundId: 5),
              buildXyloKey(color: Colors.indigo, soundId: 6),
              buildXyloKey(color: Colors.purple, soundId: 7),
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildXyloKey({required Color color, required int soundId}){
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          final player = AudioPlayer();
          player.play(AssetSource('note$soundId.wav'));
        },
        child: const Text(''),
      ),
    );
  }
}
