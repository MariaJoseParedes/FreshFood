import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ayuda extends StatelessWidget {
  const Ayuda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ayuda',
          style: GoogleFonts.skranji(
            textStyle: const TextStyle(
              color: Color.fromARGB(255, 88, 119, 184),
              fontSize: 28,
            ),
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [const Text('Información de ayuda...')],
        ),
      ),
    );
  }
}
