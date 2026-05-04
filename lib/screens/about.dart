import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Acerca de',
          style: GoogleFonts.skranji(
            fontSize: 18,
            color: const Color.fromARGB(255, 15, 15, 19),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 16),
              CircleAvatar(
                radius: 48,
                backgroundColor: Theme.of(context).colorScheme.primary,
                child: const Image(
                  image: AssetImage('assets/icons/blueberry.png'),
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'FreshFood',
                textAlign: TextAlign.center,
                style: GoogleFonts.skranji(
                  fontSize: 22,
                  color: const Color.fromARGB(255, 45, 25, 92),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Desarrollado por Maria Jose Paredes',
                textAlign: TextAlign.center,
                style: GoogleFonts.skranji(
                  fontSize: 14,
                  color: const Color.fromARGB(179, 0, 0, 0),
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Esta aplicación te permite llevar un registro de tus alimentos. Puedes agregar nuevos productos, editarlos o eliminarlos. Además, puedes ver cuáles están próximos a vencer para que puedas consumirlos a tiempo.',
                style: GoogleFonts.skranji(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 24),
              Card(
                color: const Color.fromARGB(255, 88, 119, 184),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Características:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text('• Registro de alimentos'),
                      Text('• Edición y eliminación de productos.'),
                      Text('• Tabla de productos próximos a vencer.'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
