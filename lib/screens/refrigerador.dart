import 'package:flutter/material.dart';

class Refrigerador extends StatelessWidget {
  const Refrigerador({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de ejemplo de productos en el refrigerador
    final List<Map<String, String>> productosRefrigerador = [
      {'nombre': 'Leche', 'fecha': '26 Abr'},
      {'nombre': 'Yogurt', 'fecha': '27 Abr'},
      {'nombre': 'Jamón', 'fecha': '28 Abr'},
      {'nombre': 'Queso', 'fecha': '29 Abr'},
      {'nombre': 'Mantequilla', 'fecha': '30 Abr'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Refrigerador'),
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
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color.fromARGB(255, 240, 210, 210),
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
                  itemCount: productosRefrigerador.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: const EdgeInsets.symmetric(vertical: 4.0),
                      child: ListTile(
                        dense: true,
                        leading: const Icon(
                          Icons.kitchen,
                          color: Color.fromARGB(255, 57, 50, 58),
                        ),
                        title: Text(
                          productosRefrigerador[index]['nombre']!,
                          style: const TextStyle(fontWeight: FontWeight.w500),
                        ),
                        trailing: Text(
                          productosRefrigerador[index]['fecha']!,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 124, 20, 12),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text(
                                  productosRefrigerador[index]['nombre']!,
                                ),
                                content: Text(
                                  'Fecha de vencimiento: ${productosRefrigerador[index]['fecha']}',
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
    );
  }
}
