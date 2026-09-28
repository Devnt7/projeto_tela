import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atividade Flutter 2º C',
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}
