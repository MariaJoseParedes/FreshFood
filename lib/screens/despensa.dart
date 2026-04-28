import 'package:flutter/material.dart';

class Despensa extends StatefulWidget {
  const Despensa({super.key});

  @override
  State<Despensa> createState() => _DespensaState();
}

class _DespensaState extends State<Despensa> {
  // Lista de productos en la despensa
  List<Map<String, String>> productos = [
    {'nombre': 'Arroz', 'fecha': '26 Abr'},
    {'nombre': 'Atún enlatado', 'fecha': '27 Abr'},
    {'nombre': 'Tallarines', 'fecha': '28 Abr'},
    {'nombre': 'Lentejas', 'fecha': '29 Abr'},
  ];

  void _agregarProducto() {
    final TextEditingController nombreController = TextEditingController();
    final TextEditingController fechaController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Agregar Producto'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nombreController,
                decoration: const InputDecoration(
                  labelText: 'Nombre del producto',
                ),
              ),
              TextField(
                controller: fechaController,
                decoration: const InputDecoration(
                  labelText: 'Fecha de vencimiento (ej: 26 Abr)',
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              style: TextButton.styleFrom(foregroundColor: Colors.red),
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancelar'),
            ),
            TextButton(
              style: TextButton.styleFrom(foregroundColor: Colors.green),
              onPressed: () {
                if (nombreController.text.isNotEmpty &&
                    fechaController.text.isNotEmpty) {
                  setState(() {
                    productos.add({
                      'nombre': nombreController.text,
                      'fecha': fechaController.text,
                    });
                  });
                  Navigator.of(context).pop();
                }
              },
              child: const Text('Agregar'),
            ),
          ],
        );
      },
    );
  }

  void _editarProducto(int index) {
    final TextEditingController nombreController = TextEditingController(
      text: productos[index]['nombre'],
    );
    final TextEditingController fechaController = TextEditingController(
      text: productos[index]['fecha'],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Editar Producto'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nombreController,
                decoration: const InputDecoration(
                  labelText: 'Nombre del producto',
                ),
              ),
              TextField(
                controller: fechaController,
                decoration: const InputDecoration(
                  labelText: 'Fecha de vencimiento (ej: 26 Abr)',
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              style: TextButton.styleFrom(foregroundColor: Colors.red),
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancelar'),
            ),
            TextButton(
              style: TextButton.styleFrom(foregroundColor: const Color.fromARGB(255, 0, 0, 0)),
              onPressed: () {
                if (nombreController.text.isNotEmpty &&
                    fechaController.text.isNotEmpty) {
                  setState(() {
                    productos[index] = {
                      'nombre': nombreController.text,
                      'fecha': fechaController.text,
                    };
                  });
                  Navigator.of(context).pop();
                }
              },
              child: const Text('Guardar'),
            ),
          ],
        );
      },
    );
  }

  void _eliminarProducto(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Eliminar Producto'),
          content: Text(
            '¿Estás seguro de que quieres eliminar "${productos[index]['nombre']}"?',
          ),
          actions: [
            TextButton(
              style: TextButton.styleFrom(foregroundColor: Colors.red),
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancelar'),
            ),
            TextButton(
              style: TextButton.styleFrom(foregroundColor: Colors.red),
              onPressed: () {
                setState(() {
                  productos.removeAt(index);
                });
                Navigator.of(context).pop();
              },
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
        title: const Text('Despensa'),
        backgroundColor: const Color.fromARGB(255, 177, 180, 240),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Productos en la Despensa',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color.fromARGB(255, 210, 210, 240),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  itemCount: productos.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: const EdgeInsets.symmetric(vertical: 4.0),
                      child: ListTile(
                        dense: true,
                        leading: const Icon(
                          Icons.inventory,
                          color: Color.fromARGB(255, 57, 50, 58),
                        ),
                        title: Text(
                          productos[index]['nombre']!,
                          style: const TextStyle(fontWeight: FontWeight.w500),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.edit, color: Colors.blue),
                              onPressed: () => _editarProducto(index),
                            ),
                            IconButton(
                              icon: const Icon(Icons.delete, color: Colors.red),
                              onPressed: () => _eliminarProducto(index),
                            ),
                            Text(
                              productos[index]['fecha']!,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 124, 20, 12),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text(productos[index]['nombre']!),
                                content: Text(
                                  'Fecha de vencimiento: ${productos[index]['fecha']}',
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text('Cerrar'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _agregarProducto,
        backgroundColor: const Color.fromARGB(255, 177, 180, 240),
        child: const Icon(Icons.add),
      ),
    );
  }
}
