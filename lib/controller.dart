import 'package:flutter/material.dart';

// import dart package
import 'package:audioplayers/audioplayers.dart';

void playSound({int? noteNum}) {
  final player = AudioPlayer();

  player.play(AssetSource('note$noteNum.wav'));
}

Widget buildKey({required int notePlay, MaterialColor? buttonColor}) {
  return Expanded(
    child: TextButton(
        onPressed: () {
          playSound(noteNum: notePlay);
        },
        child: Container(
          color: buttonColor,
        )),
  );
}
