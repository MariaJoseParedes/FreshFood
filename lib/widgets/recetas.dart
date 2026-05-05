import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecetasGrid extends StatelessWidget {
  const RecetasGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.count(
        shrinkWrap: true, // Permite que el Grid se ajuste al contenido
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        childAspectRatio: 1.1,
        children: [
          _buildRecipeCard(
            'Queque yogurt',
            '- 1 producto de refrigerador a punto de vencer',
            '- 3 productos de despensa',
          ),
          _buildRecipeCard(
            'Ensalada de frutas',
            '- 2 productos de despensa',
            '- 3 productos de refrigerador',
          ),
        ],
      ),
    );
  }

  // Widget privado para la plantilla de la tarjeta de receta
  Widget _buildRecipeCard(String titulo, String receta1, String receta2) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 136, 138, 223),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titulo,
            style: GoogleFonts.skranji(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            receta1,
            style: const TextStyle(
              fontSize: 12,
              color: Color.fromARGB(255, 78, 77, 77),
            ),
          ),
          Text(
            receta2,
            style: const TextStyle(
              fontSize: 12,
              color: Color.fromARGB(255, 78, 77, 77),
            ),
          ),
        ],
      ),
    );
  }
}
