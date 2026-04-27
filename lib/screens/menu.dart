import 'package:flutter/material.dart';
import 'refrigerador.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  //get child => null;

  @override
  Widget build(BuildContext context) {
    // Lista de ejemplo de productos
    final List<Map<String, String>> productosPorVencer = [
      {'nombre': 'Leche', 'fecha': '26 Abr'},
      {'nombre': 'Yogurt', 'fecha': '27 Abr'},
      {'nombre': 'Jamón', 'fecha': '28 Abr'},
    ];

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 50), // Espacio inicial
            // Título principal
            Padding(
              padding: const EdgeInsets.only(right: 260),
              child: // Alinea a la izquierda
              const Text(
                'FreshFood',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // --- CUADRO DE PRODUCTOS POR VENCER ---
            Padding(
              padding: const EdgeInsets.only(
                right: 200,
              ), // Alinea a la izquierda
              child: Text(
                'Próximos a vencer',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),

            const SizedBox(height: 5),

            Container(
              height: 170, // Altura fija para el cuadro
              width: 360, // Ancho del cuadro
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade300),
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
                itemCount: productosPorVencer.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    dense: true,
                    leading: const Icon(
                      Icons.warning_amber_rounded,
                      color: Color.fromARGB(255, 148, 45, 26),
                    ),
                    title: Text(
                      productosPorVencer[index]['nombre']!,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                    trailing: Text(
                      productosPorVencer[index]['fecha']!,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 124, 20, 12),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                },
              ),
            ),

            // ---------------------------------------
            const SizedBox(height: 20),

            //BOTON REFRIGERADOR
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40, right: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(10, 40),
                        backgroundColor: const Color.fromARGB(
                          255,
                          193,
                          170,
                          196,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Refrigerador(),
                          ),
                        );
                      },
                      child: const Text(
                        'Refrigerador',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),

                //BOTON DESPENSA
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 40),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(20, 40),
                        backgroundColor: const Color.fromARGB(
                          255,
                          177,
                          180,
                          240,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Abriendo Despensa...')),
                        );
                      },
                      child: const Text(
                        'Despensa',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
