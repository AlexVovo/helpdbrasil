import 'package:flutter/material.dart';

void main() {
  runApp(const HelpDApp());
}

class HelpDApp extends StatelessWidget {
  const HelpDApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HelpD',
      theme: ThemeData(
        primaryColor: Colors.blue,
        hintColor: Colors.blueAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: const TextTheme(
          headline6: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
          bodyText2: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
      ),
      home: const EntrevistaScreen(),
    );
  }
}

class EntrevistaScreen extends StatelessWidget {
  const EntrevistaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entrevista'),
        backgroundColor: Colors.blue,
      ),
      body: const SingleChildScrollView(
        child: Center(
          child: QuizWidget(),
        ),
      ),
    );
  }
}

class QuizWidget extends StatefulWidget {
  const QuizWidget({Key? key}) : super(key: key);

  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int _questionIndex = 0;
  int _totalScore = 0;

  final List<Map<String, Object>> _questions = [
    {
      'questionText':
          '\nITEM 1:\nComo tem estado seu humor na última semana? Você tem se sentido para baixo ou deprimido? Triste? Sem esperança?\nNa  última  semana,  com  que  frequência  você  se  sentiu  (utilize  a  palavra  referida  pelo paciente)? Todos os dias? O dia inteiro?Você tem chorado?\nHUMOR DEPRIMIDO (tristeza, desesperança, desamparo, inutilidade)\n',
      'answers': [
        {'answer': 'Ausente', 'score': 0},
        {'answer': 'Sentimentos relatados somente se perguntados.', 'score': 1},
        {
          'answer': ' Sentimentos relatados espontaneamente, com palavras.',
          'score': 2
        },
        {
          'answer':
              'Comunica os sentimentos não com palavras, isto é, com a expressão facial; a postura, a voz e a tendência ao choro.',
          'score': 3
        },
        {
          'answer':
              'O paciente comunica quase exclusivamente esses sentimentos, tanto em seu relato verbal como na comunicação não-verbal.',
          'score': 4
        },
      ],
    },
    {
      'questionText':
          '\nITEM 2:\nVocê tem se sentido especialmente autocrítico nesta última semana, sentindo que fez coisas erradas ou decepcionou outras pessoas? SE SIM: Quais foram esses pensamentos?\nSENTIMENTOS DE CULPA\n',
      'answers': [
        {'answer': '0 - Ausente\n', 'score': 0},
        {
          'answer':
              '1 - Auto-recriminação, sente que decepcionou outras pessoas.\n',
          'score': 1
        },
        {
          'answer':
              '2 - Ideias de culpa ou ruminação sobre erros passados ou más Acões.\n',
          'score': 2
        },
        {
          'answer':
              '3 - Paciente acha que a doença atual é uma punição (castigo). Delírio de culpa.\n',
          'score': 3
        },
        {
          'answer':
              '4 - Ouve vozes de acusação ou denúncia e/ou tem alucinações visuais ameaçadoras.\n',
          'score': 3
        },
      ],
    },
    {
      'questionText':
          '\nITEM 3:\nNesta última semana, você teve pensamentos de que não vale a pena viver ou que você estaria melhor morto? Ou pensamentos de se machucar ou até de se matar? SE SIM: O que você tem pensado sobre isso? Você já se machucou?\nSUICÍDIO\nIdeias ou atitudes suicidas.\n',
      'answers': [
        {'answer': '0 - Ausente\n', 'score': 0},
        {'answer': '1 - Acha que não vale a pena viver.\n', 'score': 1},
        {
          'answer':
              '2 - Deseja estar morto ou pensa possibilidade de sua morte.\n',
          'score': 2
        },
        {'answer': '3 - Ideias ou atitudes suicidas.\n', 'score': 3},
        {'answer': '4 - Tentativas de suicídio.\n', 'score': 4},
      ]
    },
    {
      'questionText':
          '\nITEM 4:\nComo tem estado seu humor na última semana? Você tem se sentido para baixo ou deprimido? Triste? Sem esperança?\nNa  última  semana,  com  que  frequência  você  se  sentiu  (utilize  a  palavra  referida  pelo paciente)? Todos os dias? O dia inteiro?Você tem chorado?\nINSÔNIA INICIAL\n',
      'answers': [
        {'answer': 'Ausente', 'score': 0},
        {'answer': 'Sentimentos relatados somente se perguntados.', 'score': 1},
        {
          'answer': ' Sentimentos relatados espontaneamente, com palavras.',
          'score': 2
        },
        {
          'answer':
              'Comunica os sentimentos não com palavras, isto é, com a expressão facial; a postura, a voz e a tendência ao choro.',
          'score': 3
        },
        {
          'answer':
              'O paciente comunica quase exclusivamente esses sentimentos, tanto em seu relato verbal como na comunicação não-verbal.',
          'score': 4
        },
      ],
    },
    {
      'questionText':
          '\nITEM 5:\nDurante esta última semana, você tem acordado no meio da noite? SE SIM: Você sai da cama? O que você faz? (somente vai ao banheiro?) Quando volta para a cama, você volta a dormir logo? Você sente que seu sono é agitado ou perturbado em algumas noites?\nINSÔNIA INTERMEDIÁRIA\n',
      'answers': [
        {'answer': '0 - Sem dificuldade.', 'score': 0},
        {
          'answer':
              '1 - Queixa-se de agitação e perturbação durante a noite.\n',
          'score': 1
        },
        {
          'answer':
              '2 - Acorda durante a noite - qualquer saída da cama (exceto por motivos de necessidade fisiológica).\n',
          'score': 2
        },
      ],
    },
    {
      'questionText':
          '\nITEM 6:\nA que horas você tem acordado pela manhã na última semana? SE CEDO: Acorda com despertador ou sozinho? A que horas você normalmente acorda (ou seja, antes de ficar deprimido)?\nINSÔNIA TARDIA\n',
      'answers': [
        {'answer': '0 - Sem dificuldade.', 'score': 0},
        {
          'answer': '1 - Acorda durante a madrugada, mas volta a dormir.\n',
          'score': 1
        },
        {
          'answer':
              '2 -  Não consegue voltar a dormir se levantar da cama durante a noite.\n',
          'score': 2
        },
      ],
    },
    {
      'questionText':
          '\nITEM 7:\n Como você tem passado seu tempo na última semana (quando não está no trabalho)? Você se sente interessado em fazer (essas atividades) ou você tem de se forçar? Você parou de fazer atividades que costumava fazer? SE SIM: Por quê? Há alguma coisa que você aguarda ansiosamente? (no seguimento): Seu interesse voltou ao normal?\nTRABALHO E ATIVIDADES\n',
      'answers': [
        {'answer': '0 - Sem dificuldades.\n', 'score': 0},
        {
          'answer':
              '1 - Pensamentos  e  sentimentos  de  incapacidade,  fadiga  ou  fraqueza,  relacionado  a atividades, trabalho ou passatempos.',
          'score': 1
        },
        {
          'answer':
              '2 - Perda de interesse em atividades, passatempos ou trabalho, quer relatado diretamente pelo paciente, quer indiretamente por desatenção, indecisão ou vacilação (sente que precisa se esforçar para o trabalho ou atividades).',
          'score': 2
        },
        {
          'answer':
              '3 - Diminuição no tempo gasto em atividades ou queda de produtividade. No hospital, o paciente se ocupa por menos de três horas por dia em atividades (trabalho hospitalar ou passatempos), com exceção das tarefas rotineiras da enfermaria.',
          'score': 3
        },
        {
          'answer':
              '4 -  Parou de trabalhar devido à doença atual. No hospital, sem atividades, com exceção das tarefas rotineiras da enfermaria ou se não consegue realizá-las sem ajuda.',
          'score': 4
        },
      ],
    },
    {
      'questionText':
          '\nITEM 8:\n Avaliação baseada na observação durante a entrevista.\nRETARDO\n',
      'answers': [
        {'answer': '0 - Pensamento e fala normal.\n', 'score': 0},
        {'answer': '1 - Leve retardo durante a entrevista.\n', 'score': 1},
        {'answer': '3 - Entrevista difícil.\n', 'score': 2},
        {'answer': '4 - Estupor completo.\n', 'score': 2},
      ],
    },
    {
      'questionText':
          '\nITEM 9:\nAvaliação baseada na observação durante a entrevista.\nAGITAÇÃO\n',
      'answers': [
        {'answer': '0 – Nenhuma.', 'score': 0},
        {'answer': '1 – Inquietação', 'score': 1},
        {'answer': '2 - Mexe as mãos, os cabelos, etc.', 'score': 2},
        {
          'answer':
              '3 -  Movimenta-se bastante, não consegue permanecer sentado durante a entrevista.',
          'score': 3
        },
        {
          'answer':
              '4 -  Retorce as mãos, rói as unhas, puxa os cabelos, morde os lábios.',
          'score': 4
        },
      ],
    },
    {
      'questionText':
          '\nITEM 10:\nVocê tem se sentido especialmente tenso ou irritado nesta última semana? Você tem estado preocupado com coisas pouco importantes, com as quais normalmente não se preocuparia? SE SIM: Com o quê, por exemplo?\n',
      'answers': [
        {'answer': '0 - Sem ansiedade. ', 'score': 0},
        {'answer': '1 - Tensão e irritabilidade subjetivas.', 'score': 1},
        {'answer': '2 - Preocupa-se com trivialidades.', 'score': 2},
        {
          'answer': '3 - Atitude apreensiva aparente no rosto ou na fala.',
          'score': 3
        },
        {
          'answer': '4 - Paciente expressa medo sem ser perguntado.',
          'score': 4
        },
      ],
    },
    {
      'questionText':
          '\nITEM 11:\nNa última semana, você sofreu de alguns dos seguintes sintomas físicos? Leia a lista, parando após cada sintoma para resposta. O quanto esses sintomas o incomodaram na última semana? Quão intensos foram? Quanto tempo ou com que frequência os teve? Nota: não considerar se claramente relacionados à medicação (por exemplo, boca seca e uso de imipramina).\n\n Concomitantes fisiológicos da ansiedade, como: GI: boca seca, flatulência, indigestão, diarreias, cólicas, eructações. CV: palpitação, cefaleias. Respiratórios: hiperventilação, suspiros, ter de urinar frequentemente, sudorese.\n\nANSIEDADE-SOMÁTICA\n',
      'answers': [
        {'answer': '0 – Ausente.', 'score': 0},
        {
          'answer':
              '1 - Duvidosos ou trivial: sintomas menores, relatados quando questionados.',
          'score': 1
        },
        {
          'answer':
              '2 - Leve: paciente descreve espontaneamente os sintomas, que não são acentuados ou incapacitantes.',
          'score': 2
        },
        {
          'answer':
              '3 - Moderada: mais que 2 sintomas e com maior frequência. São acompanhados de estresse subjetivo e prejudicam o funcionamento normal',
          'score': 3
        },
        {
          'answer':
              '4 - Grave: numerosos sintomas, persistentes e incapacitantes na maior parte do tempo, ou ataques de pânico quase diariamente.',
          'score': 4
        },
      ],
    },
    {
      'questionText':
          '\nITEM 12:\nComo tem estado seu apetite nesta última semana? (Como se compara ao seu apetite habitual) Você tem tido de se forçar a comer? As outras pessoas têm de insistir para você comer?\nSINTOMAS SOMÁTICOS - GASTRINTESTINAIS\n',
      'answers': [
        {'answer': '0 – Nenhum. ', 'score': 0},
        {
          'answer':
              '1 - Perda de apetite, mas come sem necessidade de insistência.',
          'score': 1
        },
        {'answer': '2 - Dificuldade para comer se não insistirem.', 'score': 2},
      ],
    },
    {
      'questionText':
          '\nITEM 13:\nComo tem estado sua energia nesta última semana? Você se sente cansado o tempo todo? Nesta última semana, você teve dor nas costas, dor de cabeça ou dor muscular? Nesta última semana, você tem sentido um peso nos membros, nas costas ou na cabeça?\n\nSINTOMAS SOMÁTICOS - GERAIS\n',
      'answers': [
        {'answer': '0 - Nenhum', 'score': 0},
        {
          'answer':
              '1 - Peso nos membros, costas ou cabeça; dor nas costas, cabeça ou muscular. Perda de energia e cansaço.',
          'score': 1
        },
        {
          'answer': '2 - Qualquer sintoma bem caracterizado e nítido.',
          'score': 2
        },
      ],
    },
    {
      'questionText':
          '\nITEM 14:\nComo tem estado seu interesse por sexo nesta semana? (não estou lhe perguntando sobre seu desempenho sexual, mas sobre seu interesse por sexo, isto é, o quanto você tem pensado nisso?) Houve alguma mudança em seu interesse por sexo? (relação à época em que você não estava deprimido). Isso é algo em que você tem pensado muito? Se não: isso é pouco habitual para você?\nSINTOMAS GENITAIS (como perda de libido)\n',
      'answers': [
        {'answer': '0 – Ausentes.', 'score': 0},
        {
          'answer':
              '1 - Leves ou infrequentes: perda de libido, desempenho sexual prejudicado.',
          'score': 1
        },
        {
          'answer': '2 - Óbvio e graves: perda completa do interesse sexual.',
          'score': 2
        },
      ],
    },
    {
      'questionText':
          '\nITEM 15:\nNa última semana, quanto seus pensamentos têm focalizado na sua saúde física ou no funcionamento de seu corpo (comparado ao seu pensamento habitual)? Você se queixa muito de sintomas físicos? Você tem se deparado com situações em que pede ajuda para fazer coisas que poderia fazer sozinho? SE SIM: Como o que, por exemplo? Com que frequência isso tem ocorrido?\nHIPOCONDRIA\n',
      'answers': [
        {'answer': '0 – Ausente.', 'score': 0},
        {
          'answer': '1 - Auto-observação aumentada (com relação ao corpo).',
          'score': 1
        },
        {'answer': '2 - Preocupação com a saúde.', 'score': 2},
        {
          'answer': '3 - Queixas frequentes, pedidos de ajuda, etc.',
          'score': 3
        },
        {'answer': '4 - Delírios hipocondríacos.', 'score': 4},
      ],
    },
    {
      'questionText':
          '\nITEM 16:\nVocê perdeu algum peso desde que essa depressão começou? SE SIM: Quanto? SE INCERTO: Você acha que suas roupas estão mais folgadas? NO SEGUIMENTO: Você voltou a ganhar peso? \n\n PERDA DE PESO (Marcar A ou B; A – pela história; B – pela avaliação semanal do psiquiatra responsável).\n',
      'answers': [
        {'answer': '*A* - 0 - Sem perda de peso.', 'score': 0},
        {
          'answer': '*A* - 1 - Provável perda de peso da doença atual.',
          'score': 1
        },
        {'answer': '*A* - 2 - Perda de peso definida.', 'score': 2},
        {'answer': '*B* - 0 - Menos de 0,5kg de perda por semana.', 'score': 0},
        {'answer': '*B* - 1 - Mais de 0,5kg de perda por semana', 'score': 1},
        {'answer': '*B* - 2 - Mais de 1kg de perda por semana.', 'score': 2},
      ],
    },
    {
      'questionText':
          '\nITEM 17:\nAvaliação baseada na observação\n\n CRÍTICA (CONSCIÊNCIA DA DOENÇA)\n',
      'answers': [
        {'answer': '0 - Reconhece estar deprimido e doente.', 'score': 0},
        {
          'answer':
              '1 - Reconhece estar, mas atribui a causa a má alimentação, ao clima, ao excesso de trabalho, a um vírus, a necessidade de descanso, etc.',
          'score': 1
        },
        {'answer': '2 - Nega estar doente.', 'score': 2},
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color resultColor; // Variável para armazenar a cor do resultado
    String
        depressionLevel; // Variável para armazenar o nome do nível de depressão
    IconData faceIcon; // Variável para armazenar o ícone da carinha

    // Definindo a cor, o nome do nível de depressão e o ícone da carinha com base no Total Score
    if (_totalScore >= 0 && _totalScore <= 7) {
      resultColor = Colors.green;
      depressionLevel = 'Depressão Normal';
      faceIcon = Icons.sentiment_very_satisfied; // Ícone de carinha feliz
    } else if (_totalScore >= 8 && _totalScore <= 13) {
      resultColor = Colors.blue;
      depressionLevel = 'Depressão Leve';
      faceIcon =
          Icons.sentiment_satisfied; // Ícone de carinha levemente sorridente
    } else if (_totalScore >= 14 && _totalScore <= 18) {
      resultColor = Colors.orange;
      depressionLevel = 'Depressão Moderada';
      faceIcon = Icons.sentiment_neutral; // Ícone de carinha neutra
    } else if (_totalScore >= 19 && _totalScore <= 22) {
      resultColor = Colors.red;
      depressionLevel = 'Depressão Grave';
      faceIcon =
          Icons.sentiment_dissatisfied; // Ícone de carinha levemente triste
    } else {
      resultColor = Colors.purple;
      depressionLevel = 'Depressão Muito Grave';
      faceIcon = Icons.sentiment_very_dissatisfied; // Ícone de carinha triste
    }

    return _questionIndex < _questions.length
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _questions[_questionIndex]['questionText'] as String,
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ...(_questions[_questionIndex]['answers']
                      as List<Map<String, Object>>)
                  .map((answer) => ElevatedButton(
                        onPressed: () {
                          _answerQuestion(answer['score'] as int);
                        },
                        child: Text(answer['answer'] as String),
                      ))
                  .toList(),
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                width: 500, // Definindo a largura fixa da caixa de resposta
                decoration: BoxDecoration(
                  color: resultColor, // Usando a cor calculada para o resultado
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Icon(
                      faceIcon, // Exibindo o ícone da carinha
                      size: 50,
                      color: Colors.white,
                    ),
                    SizedBox(
                        height:
                            10), // Adicionando espaço entre o ícone da carinha e o texto
                    Text(
                      ' Score Total: $_totalScore',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                        height:
                            10), // Adicionando espaço entre o texto e o nome do nível de depressão
                    Text(
                      depressionLevel, // Exibindo o nome do nível de depressão
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          );
  }
}
