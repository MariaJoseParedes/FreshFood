import 'package:flutter/material.dart';
import '../widgets/producto_tile.dart';
import 'package:google_fonts/google_fonts.dart';

class Despensa extends StatelessWidget {
  const Despensa({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> productos = [
      {'nombre': 'Arroz', 'fecha': '26 Abr'},
      {'nombre': 'Tallarines', 'fecha': '27 Abr'},
      {'nombre': 'Cereal', 'fecha': '28 Abr'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Despensa',
          style: GoogleFonts.skranji(
            textStyle: const TextStyle(
              color: Color.fromARGB(255, 88, 119, 184),
              fontSize: 28,
            ),
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Tus productos',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: productos.length,
                itemBuilder: (context, index) {
                  return ProductoTile(
                    nombre: productos[index]['nombre']!,
                    fecha: productos[index]['fecha']!,
                    onEdit: () => {},
                    onDelete: () => {},
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        backgroundColor: const Color.fromARGB(255, 193, 170, 196),
        child: const Icon(Icons.add),
      ),
    );
  }
}
