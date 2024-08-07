import 'package:flutter/material.dart';

class OrientacoesScreen extends StatelessWidget {
  const OrientacoesScreen({Key? key}) : super(key: key);

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
                "GUIA DE ENTREVISTA ESTRUTURADA DA ESCALA DE HAMILTON PARA AVALIAÇÃO DE DEPRESSÃO",
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              _buildQuestion(
                "INTRODUÇÃO",
                "Gostaria de lhe fazer algumas perguntas sobre a última semana. Como você tem se sentido desde a última (dia da semana)? Se paciente ambulatorial: você tem trabalhado? Se não: especifique por que não?",
              ),
              const SizedBox(height: 16),
              Divider(), // Linha decorativa de separação
              const SizedBox(height: 16),
              _buildQuestion(
                "ITEM 1",
                "Como tem estado seu humor na última semana? Você tem se sentido para baixo ou deprimido? Triste? Sem esperança? Na  última  semana,  com  que  frequência  você  se  sentiu  (utilize  a  palavra  referida  pelo paciente)? Todos os dias? O dia inteiro?Você tem chorado?",
                "HUMOR DEPRIMIDO (tristeza, desesperança, desamparo, inutilidade)",
                "0 - Ausentes.\n1 - Sentimentos relatados somente se perguntados.\n2 - Sentimentos relatados espontaneamente, com palavras.\n3 - Comunica os sentimentos não com palavras, isto é, com a expressão facial; a postura, a voz e a tendência ao choro.\n4 - O paciente comunica quase exclusivamente esses sentimentos, tanto em seu relato verbal como na comunicação não-verbal.\n\n=> Se pontuou de 1-4, pergunte: há quanto tempo você tem se sentido dessa maneira?",
              ),
              const SizedBox(height: 16),
              Divider(), // Linha decorativa de separação
              const SizedBox(height: 16),
              _buildQuestion(
                "ITEM 2",
                "Você tem se sentido especialmente autocrítico nesta última semana, sentindo que fez coisas erradas ou decepcionou outras pessoas? SE SIM: Quais foram esses pensamentos?",
                "Você tem se sentido culpado em relação a coisas que fez ou não fez? Você tem pensado que, de alguma fora, você é responsável pela sua depressão? Você sente que está sendo punido ficando doente?\n",
                "SENTIMENTOS DE CULPA\n\n0 - Ausente\n1 - Auto-recriminação, sente que decepcionou outras pessoas.\n2 - Ideias de culpa ou ruminação sobre erros passados ou más Acões.\n3 - Paciente acha que a doença atual é uma punição (castigo). Delírio de culpa.\n4 - Ouve vozes de acusação ou denúncia e/ou tem alucinações visuais ameaçadoras.",
              ),
              const SizedBox(height: 16),
              Divider(), // Linha decorativa de separação
              const SizedBox(height: 16),
              _buildQuestion(
                "ITEM 3",
                "Nesta última semana, você teve pensamentos de que não vale a pena viver ou que você estaria melhor morto?",
                "Ou pensamentos de se machucar ou até de se matar?\n",
                "SE SIM: O que você tem pensado sobre isso? Você já se machucou? SUICÍDIO\n\n0 - Ausente\n1 - Acha que não vale a pena viver.\n2 - Deseja estar morto ou pensa possibilidade de sua morte.\n3 - Ideias ou atitudes suicidas.\n4 - Tentativas de suicídio\n",
              ),
              const SizedBox(height: 16),
              Divider(), // Linha decorativa de separação
              const SizedBox(height: 16),
              _buildQuestion(
                "ITEM 4",
                "Como tem sido seu sono na última semana? Você teve alguma dificuldade em iniciar o sono? Após se deitar, quanto tempo levava para conseguir dormir? Em quantas noites nesta última semana você teve problemas para iniciar o sono?\n",
                "INSÔNIA INICIAL\n\n0 - Sem dificuldades para iniciar o sono.\n1 - Queixa de dificuldade ocasional para iniciar o sono, ou seja, mais que 30 minutos\n2 - Queixa-se de dificuldade para iniciar o sono todas as noites\n",
              ),
              const SizedBox(height: 16),
              Divider(), // Linha decorativa de separação
              const SizedBox(height: 16),
              _buildQuestion(
                "ITEM 5",
                "Durante esta última semana, você tem acordado no meio da noite? SE SIM: Você sai da cama? O que você faz? (somente vai ao banheiro?) Quando volta para a cama, você volta a dormir logo? Você sente que seu sono é agitado ou perturbado em algumas noites?\n",
                "\nINSÔNIA INTERMEDIÁRIA\n\n0 - Sem dificuldade.\n1 - Queixa-se de agitação e perturbação durante a noite.\n2 - Acorda durante a noite - qualquer saída da cama (exceto por motivos de necessidade fisiológica).\n",
              ),

              const SizedBox(height: 16),
              Divider(), // Linha decorativa de separação
              const SizedBox(height: 16),
              _buildQuestion(
                "ITEM 6",
                "A que horas você tem acordado pela manhã na última semana? Se cedo: Acorda com despertador ou sozinho? A que horas você normalmente acorda (ou seja, antes de ficar deprimido)?\n",
                "INSÔNIA TARDIA\n\n0 - Sem dificuldade\n1 - Acorda durante a madrugada, mas volta a dormir.\n2 -  Não consegue voltar a dormir se levantar da cama durante a noite.\n",
              ),

              const SizedBox(height: 16),
              Divider(), // Linha decorativa de separação
              const SizedBox(height: 16),
              _buildQuestion(
                "ITEM 7",
                "Como você tem passado seu tempo na última semana (quando não está no trabalho)? Você se sente interessado em fazer (essas atividades) ou você tem de se forçar? Você parou de fazer atividades que costumava fazer? SE SIM: Por quê? Há alguma coisa que você aguarda ansiosamente? (no seguimento): Seu interesse voltou ao normal?\n\nTRABALHO E ATIVIDADES\n",
                "0 - Sem dificuldades\n1 - Pensamentos  e  sentimentos  de  incapacidade,  fadiga  ou  fraqueza,  relacionado  a atividades, trabalho ou passatempos.\n2 - Perda de interesse em atividades, passatempos ou trabalho, quer relatado diretamente pelo paciente, quer indiretamente por desatenção, indecisão ou vacilação (sente que precisa se esforçar para o trabalho ou atividades).\n3 - Diminuição no tempo gasto em atividades ou queda de produtividade. No hospital, o paciente se ocupa por menos de três horas por dia em atividades (trabalho hospitalar ou passatempos), com exceção das tarefas rotineiras da enfermaria.\n4 -  Parou de trabalhar devido à doença atual. No hospital, sem atividades, com exceção das tarefas rotineiras da enfermaria, ou se não consegue realizá-las sem ajuda.\n",
              ),

              const SizedBox(height: 16),
              Divider(), // Linha decorativa de separação
              const SizedBox(height: 16),
              _buildQuestion(
                "ITEM 8",
                "Avaliação baseada na observação durante a entrevista.\n\nAGITAÇÃO\n\n0 - Nenhuma\n1 - Inquietação\n2 - Mexe as mãos, cabelos, etc\n3 -  Movimenta-se bastante, não consegue permanecer sentado durante a entrevista.\n4 -  Retorce as mãos rói as unhas, puxa os cabelos, morde os lábios\n",
              ),

              const SizedBox(height: 16),
              Divider(), // Linha decorativa de separação
              const SizedBox(height: 16),
              _buildQuestion(
                "ITEM 9",
                " Avaliação baseada na observação durante a entrevista.\n\nAGITAÇÃO\n\n0 - Nenhuma\n1 - Inquietação\n2 - Mexe as mãos, cabelos, etc\n3 -  Movimenta-se bastante, não consegue permanecer sentado durante a entrevista.\n4 -  Retorce as mãos rói as unhas, puxa os cabelos, morde os lábios\n",
              ),

              const SizedBox(height: 16),
              Divider(), // Linha decorativa de separação
              const SizedBox(height: 16),
              _buildQuestion(
                "ITEM 10",
                "Você tem se sentido especialmente tenso ou irritado nesta última semana? Você tem estado preocupado com coisas pouco importantes, com as quais normalmente não se preocuparia? SE SIM: Com o que, por exemplo?\n\n0 - Sem ansiedade\n1 - Tensão e irritabilidade subjetivas\n2 - Preocupa-se com trivialidades.3 - Atitude apreensiva aparente no rosto ou na fala.\n4 - Paciente expressa medo sem ser perguntado\n",
              ),

              const SizedBox(height: 16),
              Divider(), // Linha decorativa de separação
              const SizedBox(height: 16),
              _buildQuestion(
                "ITEM 11",
                "Na última semana, você sofreu de alguns dos seguintes sintomas físicos? Leia a lista, parando após cada sintoma para resposta. O quanto esses sintomas o incomodaram na última semana? Quão intensos foram? Quanto tempo ou com que freqüência os teve? Nota: não considerar se claramente relacionados à medicação (por exemplo, boca seca e imipramina)\n\nANSIEDADE-SOMÁTICA\n\nConcomitantes fisiológicos da ansiedade, como: GI: boca seca, flatulência, indigestão, diarréias, cólicas, eructações. CV: palpitação, cefaléias. Respiratórios: hiperventilação, suspiros. Ter de urinar freqüentemente. Sudorese.\n\n0 - Ausente\n1 - Duvidosos ou trivial: sintomas menores, relatados quando questionados.\n2 - Leve: paciente descreve espontaneamente os sintomas, que não são acentuados ou incapacitantes.\n3 - Moderada: mais que 2 sintomas e com maior frequência. São acompanhados de estresse subjetivo e prejudicam o funcionamento normal.\n4 - Grave: numerosos sintomas, persistentes e incapacitantes na maior parte do tempo, ou ataques de pânico quase diariamente.\n",
              ),

              const SizedBox(height: 16),
              Divider(), // Linha decorativa de separação
              const SizedBox(height: 16),
              _buildQuestion(
                "ITEM 12",
                "Como tem estado seu apetite nesta última semana? (Como se compara ao seu apetite habitual?) Você tem tido de se forçar a comer? As outras pessoas têm de insistir para você comer?\n\nSINTOMAS SOMÁTICOS - GASTRINTESTINAIS\n\n0 - Nenhum\n1 -  Perda de apetite, mas come sem necessidade de insistência.\n2 - Dificuldade para comer se não insistirem.\n",
              ),

              const SizedBox(height: 16),
              Divider(), // Linha decorativa de separação
              const SizedBox(height: 16),
              _buildQuestion(
                "ITEM 13",
                "Como tem estado sua energia nesta última semana? Você se sente cansado o tempo todo? Nesta última semana, você teve dor nas costas, dor de cabeça ou dor muscular? Nesta última semana, você tem sentido um peso nos membros, nas costas ou na cabeça?\n\nSINTOMAS SOMÁTICOS - GERAIS\n\n0 - Nenhum\n1 -  Peso nos membros, costas ou cabeça; dor nas costas, cabeça ou muscular. Perda de energia e cansaço..\n2 - Qualquer sintoma bem caracterizado e nítido.\n",
              ),

              const SizedBox(height: 16),
              Divider(), // Linha decorativa de separação
              const SizedBox(height: 16),
              _buildQuestion(
                "ITEM 14",
                "Como tem estado seu interesse por sexo nesta semana? (não estou lhe perguntando sobre seu desempenho sexual, mas sobre seu interesse por sexo, isto é, o quanto você tem pensado nisso?) Houve alguma mudança em seu interesse por sexo (relação à época em que você não estava deprimido)? Isso é algo em que você tem pensado muito? Se não: isso é pouco habitual para você?\n\nSINTOMAS GENITAIS (como perda de libido)\n\n0 - Ausentes\n1 - Leves ou infreqüentes: perda de libido, desempenho sexual prejudicado.\n2 - Óbvio e graves: perda completa do interesse sexual.\n",
              ),

              const SizedBox(height: 16),
              Divider(), // Linha decorativa de separação
              const SizedBox(height: 16),
              _buildQuestion(
                "ITEM 15",
                " Na última semana, quanto seus pensamentos têm focalizado na sua saúde física ou no funcionamento de seu corpo (comparado ao seu pensamento habitual) Você se queixa muito de sintomas físicos? Você tem-se deparado com situações em que pede ajuda para fazer coisas que poderia fazer sozinho? SE SIM: Como o que, por exemplo? Com que freqüência isso tem ocorrido?\n\nHIPOCONDRIA\n\n0 - Ausente\n1 - Auto-observação aumentada (com relação ao Corpo).\n2 - Preocupação com a saúde.\n3 - Queixas frequentes, pedidos de ajuda, etc.\n4 - Delírios hipocondríacos.\n",
              ),

              const SizedBox(height: 16),
              Divider(), // Linha decorativa de separação
              const SizedBox(height: 16),
              _buildQuestion(
                "ITEM 16",
                "Você perdeu algum peso desde que essa (DEPRESSÃO) começou? SE SIM: Quanto? SE INCERTO: Você acha que suas roupas estão mais folgadas? NO SEGUIMENTO: Você voltou a ganhar peso?\n\nPERDA DE PESO (Marcar A ou B; A – pela história; B – pela avaliação semanal do psiquiatra responsável).\n\n*A:\n0 - Sem perda de peso\n1 - Provável perda de peso da doença atual.\n2 - Perda de peso definida.\n\n*B:\n0 - Menos de 0,5kg de perda por semana.\n1 - Mais de 0,5kg de perda por semana\n2 - Mais de 1kg de perda por semana.\n",
              ),

              const SizedBox(height: 16),
              Divider(), // Linha decorativa de separação
              const SizedBox(height: 16),
              _buildQuestion(
                "ITEM 17",
                "Avaliação baseada na observação\n\nCRÍTICA (CONSCIÊNCIA DA DOENÇA)\n\n0 - Reconhece estar deprimido e doente\n1 - Reconhece estar, mas atribui a causa a má alimentação, ao clima, ao excesso de trabalho, a um vírus, à necessidade de descanso, etc.\n2 - Nega estar doente.\n",
              ),
              // Adicione as linhas Divider() conforme necessário para os demais itens...
              const SizedBox(height: 16),
              Divider(), // Linha decorativa de separação
              const SizedBox(height: 16),
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
