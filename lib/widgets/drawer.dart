import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../screens/configuracion.dart';
import '../screens/about.dart';
import '../screens/perfil.dart';
import '../screens/ayuda.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 88, 119, 184),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/perfil.jpg', width: 50, height: 50),
                const SizedBox(height: 10),
                Text(
                  'Usuario',
                  style: GoogleFonts.skranji(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person_outline),
            title: const Text('Perfil'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Perfil()),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text('Configuración'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Configuracion()),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('Acerca de FreshFood'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const About()),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.help),
            title: const Text('Ayuda y Soporte'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Ayuda()),
            ),
          ),
        ],
      ),
    );
  }
}
