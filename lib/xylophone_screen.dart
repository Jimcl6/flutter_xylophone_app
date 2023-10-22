import 'package:flutter/material.dart';

// import screen
import 'gradient_container.dart';

// import dart packages
import 'package:google_fonts/google_fonts.dart';

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
        body: const SafeArea(
          child: GradientContainer(
            color1: Color.fromRGBO(0, 2, 116, 1),
            color2: Color.fromRGBO(1, 3, 139, 1),
          ),
        ),
      ),
    );
  }
}
