import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Título principal
            const Text(
              'FreshFood',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            const SizedBox(height: 60),

            // Botón Refrigerador
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(220, 70),
                backgroundColor: const Color.fromARGB(255, 174, 114, 182),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                // Acción para Refrigerador
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Abriendo Refrigerador...')),
                );
              },
              child: const Text(
                'Refrigerador',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Botón Despensa
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(220, 70),
                backgroundColor: const Color.fromARGB(255, 143, 149, 247),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                // Acción para Despensa
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Abriendo Despensa...')),
                );
              },
              child: const Text(
                'Despensa',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
