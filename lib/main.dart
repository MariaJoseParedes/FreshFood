import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
//import 'screens/menu.dart';
import 'screens/abrir_app.dart';

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
          seedColor: const Color.fromARGB(255, 255, 255, 255),
          primary: const Color.fromARGB(255, 235, 245, 236),
          secondary: const Color.fromARGB(255, 156, 159, 192),
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 229, 240, 248),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
        useMaterial3: true,
      ),
      home: const LoadingScreen(),
    );
  }
}
