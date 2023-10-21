import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:xylophone_fltter/controller.dart';

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

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
                buildKey(notePlay: 1, buttonColor: Colors.red),
                buildKey(notePlay: 2, buttonColor: Colors.orange),
                buildKey(notePlay: 3, buttonColor: Colors.yellow),
                buildKey(notePlay: 4, buttonColor: Colors.green),
                buildKey(notePlay: 5, buttonColor: Colors.blue),
                buildKey(notePlay: 6, buttonColor: Colors.indigo),
                buildKey(notePlay: 7, buttonColor: Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
