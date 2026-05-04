import 'package:flutter/material.dart';

class Configuracion extends StatelessWidget {
  const Configuracion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuración'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Text('Pantalla de Configuración'),
      ),
    );
  }
}
