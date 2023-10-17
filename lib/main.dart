import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        final player = AudioPlayer();

                        player.play(AssetSource('note1.wav'));
                      },
                      child: Container(
                        color: Colors.red,
                      )),
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        final player = AudioPlayer();

                        player.play(AssetSource('note2.wav'));
                      },
                      child: Container(
                        color: Colors.orange,
                      )),
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        final player = AudioPlayer();

                        player.play(AssetSource('note3.wav'));
                      },
                      child: Container(
                        color: Colors.yellow,
                      )),
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        final player = AudioPlayer();

                        player.play(AssetSource('note4.wav'));
                      },
                      child: Container(
                        color: Colors.green,
                      )),
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        final player = AudioPlayer();

                        player.play(AssetSource('note5.wav'));
                      },
                      child: Container(
                        color: Colors.blue,
                      )),
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        final player = AudioPlayer();

                        player.play(AssetSource('note6.wav'));
                      },
                      child: Container(
                        color: Colors.indigo,
                      )),
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        final player = AudioPlayer();

                        player.play(AssetSource('note7.wav'));
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
