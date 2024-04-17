import 'package:flutter/material.dart';

class ReferenciasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Referências'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Página de Referências'),
            SizedBox(height: 20), // Espaçamento entre os textos
            Text(
                '\nSOFTWARES UTILIZADOS PARA DESENVOLVIMENTO\n\n* Flutter(Dart): Flutter é uma estrutura de código aberto do Google para criar aplicativos multiplataforma bonitos e compilados nativamente a partir de uma única base de código.\n\n* Google Material Design:  um sistema de design criado pelo Google para ajudar as equipes a criar experiências digitais de alta qualidade para Android, iOS, Flutter e Web.\n\n* Microsoft Visual Studio Code\n\n* Ícones: flaticon.com\n\nOUTRAS BIBLIOGRAFIAS\n\n* Hamilton scale (HAM-D 17 items)\n\n'), // Texto adicional
          ],
        ),
      ),
    );
  }
}
