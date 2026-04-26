import 'package:flutter/material.dart';
import 'menu.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    // Simulamos una carga de 3 segundos antes de ir al Menú
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const Menu()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Tu Logo (puedes usar un Icon temporalmente)
            Icon(
              Icons.restaurant_menu,
              size: 100,
              color: Color.fromARGB(255, 204, 109, 102),
            ),
            SizedBox(height: 30),
            // Implementación del CircularProgressIndicator
            CircularProgressIndicator(
              strokeWidth: 5,
              valueColor: AlwaysStoppedAnimation<Color>(
                Color.fromARGB(255, 56, 70, 114),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
