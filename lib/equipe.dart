import 'package:flutter/material.dart';

class EquipeScreen extends StatelessWidget {
  final List<String> teamMembers = [
    "Alexsandro Vargas de Ávila (UFCSPA)",
    "Profº. Drº. Ezequiel Teixeira Andreotti (UFCSPA)",
    "Profª. Drª. Juliana da Silva Herbert (UFCSPA)",
    "Celso Juarez Santos da Rosa Júnior(UFCSPA)",
    "Cristina Flôres Bontoncello(UFCSPA)",
    "Danieli de Paula Rodrigues(UFRGS)",
    "Felipe de Assis Ribeiro(UFCSPA)",
    "Juliana Rigue da Silva(UFCSPA)",
    "Patrycia Chedid Danna(UFCSPA)",
    "Ygor Arzeno Ferrão(UFCSPA)"
  ];

  EquipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Equipe'),
        backgroundColor: Colors.blue[800], // Cor de fundo da barra de navegação
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: teamMembers.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey[300]!), // Cor da borda
                ),
                color: index % 2 == 0
                    ? Colors.grey[100]
                    : Colors.white, // Cores alternadas para as linhas
              ),
              child: Center(
                child: Text(
                  teamMembers[index],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue[800], // Cor do texto
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
