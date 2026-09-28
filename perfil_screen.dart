import 'package:flutter/material.dart';
import 'configuracoes_screen.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu Perfil'),
      ),
      body: Center(
        child: Container(
          width: 330,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.person,
                size: 90,
              ),
              const SizedBox(height: 12),
              const Text(
                'Nome: João da Silva',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 8),
              const Text('Turma: 2º C'),
              const Text('Curso: Técnico em Desenvolvimento'),
              const Text('Matrícula: 2026001'),
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(vertical: 10),
                color: Colors.green,
                child: const Text(
                  'Situação: ATIVO',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ConfiguracoesScreen(),
                    ),
                  );
                },
                child: const Text('CONFIGURAÇÕES'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
