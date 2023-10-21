import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';

void playSound({int? noteNum}) {
  final player = AudioPlayer();

  player.play(AssetSource('note$noteNum.wav'));
}

Widget buildKey({int? notePlay, var buttonColor}) {
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
