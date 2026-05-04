import 'package:flutter/material.dart';
import 'refrigerador.dart';
import 'despensa.dart';
import '../widgets/drawer.dart';
import 'package:google_fonts/google_fonts.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> productosPorVencer = [
      {'nombre': 'Leche', 'fecha': '26 Abr'},
      {'nombre': 'Yogurt', 'fecha': '27 Abr'},
      {'nombre': 'Jamón', 'fecha': '28 Abr'},
      {'nombre': 'Queso', 'fecha': '5 mayo'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FreshFood',
          style: GoogleFonts.skranji(
            textStyle: const TextStyle(
              color: Color.fromARGB(255, 88, 119, 184),
              fontSize: 28,
            ),
          ),
        ),
      ),

      drawer: const CustomDrawer(),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Próximos a vencer',
                  style: GoogleFonts.skranji(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),

            Container(
              height: 320,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: ListView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: productosPorVencer.length,
                itemBuilder: (context, index) {
                  final producto = productosPorVencer[index];
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 219, 174, 169),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      dense: true, // Reduce el espacio vertical
                      leading: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.timer_outlined,
                          color: Color(0xFF942D1A),
                          size: 20,
                        ),
                      ),
                      title: Text(
                        producto['nombre']!,
                        style: GoogleFonts.skranji(fontSize: 15),
                      ),
                      subtitle: const Text(
                        "Consumir pronto",
                        style: TextStyle(fontSize: 11),
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            "Vence",
                            style: TextStyle(
                              fontSize: 9,
                              color: Color.fromARGB(255, 41, 41, 41),
                            ),
                          ),
                          Text(
                            producto['fecha']!,
                            style: const TextStyle(
                              color: Color(0xFF7C140C),
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),

      // --- NUEVA BARRA INFERIOR ---
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(color: Colors.black12, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          ),
          child: BottomAppBar(
            height: 70,
            color: const Color.fromARGB(255, 88, 119, 184),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.home_filled,
                    color: Colors.white,
                    size: 28,
                  ),
                  onPressed: () {
                    // Acción para ir a la pantalla principal
                  },
                ),
                IconButton(
                  icon: const Icon(
                    Icons.ac_unit,
                    color: Colors.white70,
                    size: 28,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Refrigerador(),
                      ),
                    );
                  },
                ),
                IconButton(
                  icon: const Icon(
                    Icons.inventory,
                    color: Color.fromARGB(179, 255, 255, 255),
                    size: 28,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Despensa()),
                    );
                  },
                ),
                IconButton(
                  icon: const Icon(
                    Icons.notifications_none,
                    color: Colors.white70,
                    size: 28,
                  ),
                  onPressed: () {
                    // Acción para notificaciones
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget  para personalizar los botones
  Widget _buildMenuButton(
    BuildContext context,
    String text,
    Color color,
    Widget page,
  ) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 15),
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 2,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page),
            );
          },
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ),
      ),
    );
  }
}
