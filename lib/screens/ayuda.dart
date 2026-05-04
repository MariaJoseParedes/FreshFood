import 'package:flutter/material.dart';

class Ayuda extends StatelessWidget {
  const Ayuda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ayuda'),
        backgroundColor: Colors.indigo.shade100,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Información de ayuda...'),
          ],
        ),
      ),
    );
  }
}