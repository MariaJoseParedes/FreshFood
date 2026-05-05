import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notificaciones extends StatelessWidget {
  const Notificaciones({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notificaciones',
          style: GoogleFonts.skranji(
            textStyle: const TextStyle(
              color: Color.fromARGB(255, 88, 119, 184),
              fontSize: 28,
            ),
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Center(child: Text('Aquí verás tus notificaciones')),
    );
  }
}
