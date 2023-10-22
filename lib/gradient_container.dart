// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

// import controller.dart
import 'controller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    var this.color1,
    var this.color2,
  });

  final color1;
  final color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [color1, color2])),
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
    );
  }
}
