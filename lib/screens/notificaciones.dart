import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notificaciones extends StatelessWidget {
  const Notificaciones({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista simple de notificaciones
    final List<String> alertas = [
      '¡El yogurt está a punto de vencer, no lo desperdicies!',
      '¡El pan de molde está a punto de vencer, no lo desperdicies!',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notificaciones',
          style: GoogleFonts.skranji(
            color: const Color.fromARGB(255, 88, 119, 184),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 88, 119, 184),
        ),
      ),
      body: Container(
        color: const Color(0xFFF5F7FA), // Color de fondo suave
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: alertas.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.only(bottom: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 2,
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 219, 174, 169),
                  child: Icon(
                    Icons.notification_important,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  alertas[index],
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
                subtitle: const Text(
                  'Hace 2 horas',
                  style: TextStyle(fontSize: 11),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
