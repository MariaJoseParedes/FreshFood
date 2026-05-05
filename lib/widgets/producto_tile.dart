import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductoTile extends StatelessWidget {
  final String nombre;
  final String fecha;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const ProductoTile({
    super.key,
    required this.nombre,
    required this.fecha,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      child: ListTile(
        leading: const Icon(
          Icons.inventory,
          color: Color.fromARGB(255, 47, 40, 48),
        ),
        title: Text(
          nombre,
          style: GoogleFonts.skranji(fontWeight: FontWeight.w500),
        ),
        subtitle: Text(
          'Vence: $fecha',
          style: const TextStyle(color: Colors.redAccent),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: const Icon(Icons.edit, color: Colors.blue),
              onPressed: onEdit,
            ),
            IconButton(
              icon: const Icon(
                Icons.delete,
                color: Color.fromARGB(255, 194, 77, 69),
              ),
              onPressed: onDelete,
            ),
          ],
        ),
      ),
    );
  }
}
