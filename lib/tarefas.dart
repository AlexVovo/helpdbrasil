import 'package:flutter/material.dart';
import 'entrevista.dart'; // Importar a página de entrevista
import 'escala.dart'; // Importar a página da escala HAM-D 17
import 'orientacoes.dart'; // Importar a página de orientações
import 'referencias.dart'; // Importar a página de referências
import 'equipe.dart'; // Importar a página da equipe
import 'exportar.dart'; // Importar a página de exportar entrevista

class TarefasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarefas'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        children: <Widget>[
          buttonWithText(context, 'Realizar Entrevista', EntrevistaScreen()),
          SizedBox(height: 20),
          buttonWithText(context, 'Escala HAM-D 17', EscalaScreen()),
          SizedBox(height: 20),
          buttonWithText(context, 'Orientações', OrientacoesScreen()),
          SizedBox(height: 20),
          buttonWithText(context, 'Referências', ReferenciasScreen()),
          SizedBox(height: 20),
          buttonWithText(context, 'Equipe', EquipeScreen()),
          SizedBox(height: 20),
          buttonWithText(context, 'Exportar Entrevista', ExportarScreen()),
        ],
      ),
    );
  }

  Widget buttonWithText(BuildContext context, String text, Widget screen) {
    return Container(
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
