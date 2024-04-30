import 'package:flutter/material.dart';
import 'entrevista.dart'; // Importar a página de entrevista
import 'escala.dart'; // Importar a página da escala HAM-D 17
import 'orientacoes.dart'; // Importar a página de orientações
import 'referencias.dart'; // Importar a página de referências
import 'equipe.dart'; // Importar a página da equipe
import 'exportar.dart'; // Importar a página de exportar entrevista

class TarefasScreen extends StatelessWidget {
  const TarefasScreen({required Key key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarefas'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        children: <Widget>[
          buttonWithText(
              // ignore: prefer_const_constructors
              context,
              'Realizar Entrevista',
              EntrevistaScreen()),
          const SizedBox(height: 20),
          buttonWithText(context, 'Escala HAM-D 17', EscalaScreen()),
          const SizedBox(height: 20),
          buttonWithText(context, 'Orientações', const OrientacoesScreen()),
          const SizedBox(height: 20),
          buttonWithText(context, 'Referências', const ReferenciasScreen()),
          const SizedBox(height: 20),
          buttonWithText(context, 'Equipe', EquipeScreen()),
          const SizedBox(height: 20),
          buttonWithText(
              context, 'Exportar Entrevista', const ExportarScreen()),
        ],
      ),
    );
  }

  Widget buttonWithText(BuildContext context, String text, Widget screen) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5, // 50% da largura da tela
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screen),
          );
        },
        child: Text(text),
      ),
    );
  }
}
