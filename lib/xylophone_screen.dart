import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:audioplayers/audioplayers.dart';

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound({int? noteNum}) {
    var noteNum = 0;
    final player = AudioPlayer();

    player.play(AssetSource('note$noteNum.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Xylophone App',
              style: GoogleFonts.josefinSlab(
                  textStyle: const TextStyle(
                fontWeight: FontWeight.w800,
                letterSpacing: 2,
              )),
            ),
          ),
        ),
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  Color.fromRGBO(0, 2, 116, 1),
                  Color.fromRGBO(1, 3, 139, 1),
                ])),
            child: Column(
              children: [
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        playSound(noteNum: 1);
                      },
                      child: Container(
                        color: Colors.red,
                      )),
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        playSound(noteNum: 2);
                      },
                      child: Container(
                        color: Colors.orange,
                      )),
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        playSound(noteNum: 3);
                      },
                      child: Container(
                        color: Colors.yellow,
                      )),
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        playSound(noteNum: 4);
                      },
                      child: Container(
                        color: Colors.green,
                      )),
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        playSound(noteNum: 5);
                      },
                      child: Container(
                        color: Colors.blue,
                      )),
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        playSound(noteNum: 6);
                      },
                      child: Container(
                        color: Colors.indigo,
                      )),
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        playSound(noteNum: 7);
                      },
                      child: Container(
                        color: Colors.purple,
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
