import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/recetas.dart';
import '../widgets/bottomBar.dart';

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
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

            //const RecetasGrid(),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Ideas de recetas',
                  style: GoogleFonts.skranji(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 88, 119, 184),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

            //widget para mostrar las recetas
            const RecetasGrid(),

            const SizedBox(height: 10),
          ],
        ),
      ),

      bottomNavigationBar: const BottomBar(),
    );
  }
}
