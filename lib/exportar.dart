import 'package:flutter/material.dart';

class ExportarScreen extends StatelessWidget {
  const ExportarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exportar Entrevista'),
      ),
      body: const Center(
        child: Text('Página de Exportar Entrevista'),
      ),
    );
  }
}
