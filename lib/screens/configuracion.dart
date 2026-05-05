import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Configuracion extends StatelessWidget {
  const Configuracion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Configuración',
          style: GoogleFonts.skranji(
            textStyle: TextStyle(
              color: Color.fromARGB(255, 88, 119, 184),
              fontSize: 28,
            ),
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Center(child: Text('Pantalla de Configuración')),
    );
  }
}
