import 'package:flutter/material.dart';

class ConfiguracoesScreen extends StatefulWidget {
  const ConfiguracoesScreen({super.key});

  @override
  State<ConfiguracoesScreen> createState() => _ConfiguracoesScreenState();
}

class _ConfiguracoesScreenState extends State<ConfiguracoesScreen> {
  bool temaEscuro = false;
  bool notificacoes = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
      ),
      body: Center(
        child: Container(
          width: 320,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Preferências',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),

              // Tema escuro
              Row(
                children: [
                  const Icon(Icons.dark_mode),
                  const SizedBox(width: 8),
                  const Expanded(child: Text('Tema escuro')),
                  Switch(
                    value: temaEscuro,
                    onChanged: (valor) {
                      setState(() {
                        temaEscuro = valor;
                      });
                    },
                  ),
                ],
              ),

              // Notificações
              Row(
                children: [
                  const Icon(Icons.notifications),
                  const SizedBox(width: 8),
                  const Expanded(child: Text('Notificações')),
                  Switch(
                    value: notificacoes,
                    onChanged: (valor) {
                      setState(() {
                        notificacoes = valor;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Botão SAIR
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  onPressed: () {
                    // ação de sair aqui
                  },
                  child: const Text(
                    'SAIR',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
