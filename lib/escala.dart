import 'package:flutter/material.dart';

class EscalaScreen extends StatelessWidget {
  final List<Map<String, String>> hamdItems = [
    {
      'item': '1. Humor Depressivo',
      'pontos': '0-2: Normal\n3-4: Leve\n5-7: Moderado\n>=8: Grave'
    },
    {
      'item': '2. Sensação de Culpa',
      'pontos': '0-1: Normal\n2: Leve\n3: Moderado\n>=4: Grave'
    },
    {
      'item': '3. Suicídio',
      'pontos': '0: Normal\n1-2: Leve\n3-4: Moderado\n>=5: Grave'
    },
    {
      'item': '4. Insônia Inicial',
      'pontos': '0: Normal\n1: Leve\n2-3: Moderado\n>=4: Grave'
    },
    {
      'item': '5. Insônia Média',
      'pontos': '0: Normal\n1-2: Leve\n3-4: Moderado\n>=5: Grave'
    },
    {
      'item': '6. Insônia Terminal',
      'pontos': '0: Normal\n1-2: Leve\n3-4: Moderado\n>=5: Grave'
    },
    {
      'item': '7. Agitação',
      'pontos': '0-1: Normal\n2: Leve\n3: Moderado\n>=4: Grave'
    },
    {
      'item': '8. Retardo Psicomotor',
      'pontos': '0: Normal\n1: Leve\n2: Moderado\n>=3: Grave'
    },
    {
      'item': '9. Ansiedade Somática',
      'pontos': '0: Normal\n1: Leve\n2: Moderado\n>=3: Grave'
    },
    {
      'item': '10. Sintomas Somáticos Gastrointestinais',
      'pontos': '0: Normal\n1: Leve\n2: Moderado\n>=3: Grave'
    },
    {
      'item': '11. Sintomas Somáticos Gerais',
      'pontos': '0: Normal\n1: Leve\n2-3: Moderado\n>=4: Grave'
    },
    {
      'item': '12. Perda de Peso',
      'pontos': '0: Normal\n1: Leve\n2-3: Moderado\n>=4: Grave'
    },
    {
      'item': '13. Insônia Média',
      'pontos': '0: Normal\n1-2: Leve\n3-4: Moderado\n>=5: Grave'
    },
    {
      'item': '14. Libido',
      'pontos': '0: Normal\n1: Leve\n2: Moderado\n>=3: Grave'
    },
    {
      'item': '15. Anedonia',
      'pontos': '0-1: Normal\n2: Leve\n3-4: Moderado\n>=5: Grave'
    },
    {
      'item': '16. Somatização',
      'pontos': '0-1: Normal\n2: Leve\n3-4: Moderado\n>=5: Grave'
    },
    {
      'item': '17. Sintomas Sensoriais',
      'pontos': '0: Normal\n1: Leve\n2-3: Moderado\n>=4: Grave'
    },
  ];

  EscalaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Escala HAM-D 17'),
        backgroundColor: Colors.blue[800], // Cor de fundo da barra de navegação
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: hamdItems.length,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    hamdItems[index]['item']!,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[800], // Cor do texto
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    hamdItems[index]['pontos']!,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue[800], // Cor do texto
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
