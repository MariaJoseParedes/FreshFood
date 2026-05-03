import 'package:flutter/material.dart';
import '../widgets/producto_tile.dart';
import '../widgets/producto_dialog.dart';

class Refrigerador extends StatefulWidget {
  const Refrigerador({super.key});

  @override
  State<Refrigerador> createState() => _RefrigeradorState();
}

class _RefrigeradorState extends State<Refrigerador> {
  // Datos específicos del refrigerador
  List<Map<String, String>> productos = [
    {'nombre': 'Leche', 'fecha': '26 Abr'},
    {'nombre': 'Yogurt', 'fecha': '27 Abr'},
    {'nombre': 'Jamón', 'fecha': '28 Abr'},
  ];

  void _gestionarProducto({int? index}) async {
    final resultado = await showDialog<Map<String, String>>(
      context: context,
      builder: (context) => ProductoDialog(
        nombreInicial: index != null ? productos[index]['nombre'] : null,
        fechaInicial: index != null ? productos[index]['fecha'] : null,
      ),
    );

    if (resultado != null && resultado['nombre']!.isNotEmpty) {
      setState(() {
        if (index == null) {
          productos.add(resultado);
        } else {
          productos[index] = resultado;
        }
      });
    }
  }

  void _eliminarProducto(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('¿Eliminar producto?'),
          content: Text(
            '¿Estás seguro de que quieres eliminar "${productos[index]['nombre']}"?',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), // Cierra sin hacer nada
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  productos.removeAt(index);
                });
                Navigator.pop(context); // Cierra el diálogo después de eliminar
              },
              style: TextButton.styleFrom(foregroundColor: Colors.red),
              child: const Text('Eliminar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Refrigerador'),
        // Usamos el color específico que tenías para el refrigerador
        backgroundColor: const Color.fromARGB(255, 235, 221, 236),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Productos en el Refrigerador',
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
                    onEdit: () => _gestionarProducto(index: index),
                    onDelete: () => _eliminarProducto(index),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _gestionarProducto(),
        backgroundColor: const Color.fromARGB(255, 193, 170, 196),
        child: const Icon(Icons.add),
      ),
    );
  }
}
