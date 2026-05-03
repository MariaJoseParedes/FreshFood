import 'package:flutter/material.dart';
import '../widgets/producto_tile.dart';
import '../widgets/producto_dialog.dart';

class Despensa extends StatefulWidget {
  const Despensa({super.key});

  @override
  State<Despensa> createState() => _DespensaState();
}

class _DespensaState extends State<Despensa> {
  List<Map<String, String>> productos = [
    {'nombre': 'Arroz', 'fecha': '26 Abr'},
    {'nombre': 'Atún', 'fecha': '27 Abr'},
  ];

  // Función única para agregar o editar
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
    setState(() => productos.removeAt(index));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Despensa'),
        backgroundColor: Colors.indigo.shade100,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () => _gestionarProducto(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
