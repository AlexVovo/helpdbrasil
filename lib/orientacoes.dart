import 'package:flutter/material.dart';

class OrientacoesScreen extends StatelessWidget {
  const OrientacoesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Orientações'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "GUIA DA ENTREVISTA ESTRUTURADA DA ESCALA PARA AVALIAÇÃO DE DEPRESSÃO DE HAMILTON",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              _buildQuestion(
                "INTRODUÇÃO",
                "Gostaria de lhe fazer algumas perguntas sobre a última semana. Como você tem se sentido desde a última (dia da semana)? Se paciente ambulatorial: você tem trabalhado? Se não: especifique por que não?",
              ),
              _buildQuestion(
                "ITEM 1",
                "Como tem estado seu humor na última semana? Você tem se sentido para baixo ou deprimido? Triste? Sem esperança? Na  última  semana,  com  que  frequência  você  se  sentiu  (utilize  a  palavra  referida  pelo paciente)? Todos os dias? O dia inteiro?Você tem chorado?",
                "HUMOR DEPRIMIDO (tristeza, desesperança, desamparo, inutilidade)",
                "0 - Ausentes.\n1 - Sentimentos relatados somente se perguntados.\n2 - Sentimentos relatados espontaneamente, com palavras.\n3 - Comunica os sentimentos não com palavras, isto é, com a expressão facial; a postura, a voz e a tendência ao choro.\n4 - O paciente comunica quase exclusivamente esses sentimentos, tanto em seu relato verbal como na comunicação não-verbal.\n\n=> Se pontuou de 1-4, pergunte: há quanto tempo você tem se sentido dessa maneira?",
              ),

              _buildQuestion(
                "ITEM 2",
                "Você tem se sentido especialmente autocrítico nesta última semana, sentindo que fez coisas erradas ou decepcionou outras pessoas? SE SIM: Quais foram esses pensamentos?",
                "Você tem se sentido culpado em relação a coisas que fez ou não fez? Você tem pensado que, de alguma fora, você é responsável pela sua depressão? Você sente que está sendo punido ficando doente?\n",
                "SENTIMENTOS DE CULPA\n\n0 - Ausente\n1 - Auto-recriminação, sente que decepcionou outras pessoas.\n2 - Ideias de culpa ou ruminação sobre erros passados ou más Acões.\n3 - Paciente acha que a doença atual é uma punição (castigo). Delírio de culpa.\n4 - Ouve vozes de acusação ou denúncia e/ou tem alucinações visuais ameaçadoras.",
              ),

              // Adicione os demais itens aqui...
              // _buildQuestion("ITEM 2", ...),
              // _buildQuestion("ITEM 3", ...),
              // ...
              const Text(
                "ESCORE TOTAL HAM-D 17 ITENS",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              const Text("TOTAL:"),
              const Text("DATA:"),
              const Text("NÚMERO:"),
              const SizedBox(height: 16),
              const Text(
                "REFERÊNCIAS",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              const Text(
                "* Moreno RA, Moreno DH. Escalas de avaliação para depressão de Hamilton (HAM-D) e Montgomery-Asberg (MADRS). In: Gorenstein C, Andrade LHSG, Zuardi AW. Escalas de avaliação clínica em psiquiatria e psicofarmacologia. São Paulo: Lemos, 2000. p. 71-87.",
              ),
              const Text(
                "* Freire, Manoela Ávila et al. Escala Hamilton: estudo das características psicométricas em uma amostra do sul do Brasil* Manuscrito desenvolvido como trabalho de conclusão de curso da autora principal, em 2013/1. . Jornal Brasileiro de Psiquiatria [online]. 2014, v. 63, n. 4 [Acessado 20 Abril 2022] , pp. 281-289. Disponível em: <https://doi.org/10.1590/0047-2085000000036>. ISSN 0047-2085. https://doi.org/10.1590/0047-2085000000036.",
              ),
              const Text(
                "* Akdemir A, Türkçapar MH, Orsel SD, Demirergi N, Dag I, Ozbay MH. Reliability and validity of the Turkish version of the Hamilton Depression Rating Scale. Compr Psychiatry. 2001 Mar-Apr;42(2):161-5. doi: 10.1053/comp.2001.19756. PMID: 11244153.",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildQuestion(String title, String question,
      [String? subtitle, String? options]) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text(question),
        if (subtitle != null) ...[
          const SizedBox(height: 8),
          Text(
            subtitle,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
        if (options != null) ...[
          const SizedBox(height: 8),
          Text(options),
        ],
        const SizedBox(height: 16),
      ],
    );
  }
}
