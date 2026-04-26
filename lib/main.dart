import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'screens/menu.dart';

var logger = Logger();

void main() {
  logger.d('Iniciando FreshFood');
  logger.i('Iniciando FreshFood');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FreshFood',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 39, 85, 41),
          primary: const Color.fromARGB(255, 38, 83, 40),
          secondary: const Color.fromARGB(255, 36, 82, 43),
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 59, 109, 78),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
        useMaterial3: true,
      ),
      home: const Menu(),
    );
  }
}
