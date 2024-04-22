import 'package:flutter/material.dart';

class EntrevistaScreen extends StatelessWidget {
  const EntrevistaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entrevista'),
      ),
      body: const Center(
        child: Text('Página de Entrevista'),
      ),
    );
  }
}
