import 'package:flutter/material.dart';

void main() {
  runApp(HelpDApp());
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
      body: SingleChildScrollView(
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
          '\nITEM 6:\nDurante esta última semana, você tem acordado no meio da noite? SE SIM: Você sai da cama? O que você faz? (somente vai ao banheiro?) Quando volta para a cama, você volta a dormir logo? Você sente que seu sono é agitado ou perturbado em algumas noites?\nINSÔNIA INTERMEDIÁRIA\n',
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
          '\nITEM 7:\nDurante esta última semana, você tem acordado no meio da noite? SE SIM: Você sai da cama? O que você faz? (somente vai ao banheiro?) Quando volta para a cama, você volta a dormir logo? Você sente que seu sono é agitado ou perturbado em algumas noites?\nINSÔNIA INTERMEDIÁRIA\n',
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
          '\nITEM 8:\nDurante esta última semana, você tem acordado no meio da noite? SE SIM: Você sai da cama? O que você faz? (somente vai ao banheiro?) Quando volta para a cama, você volta a dormir logo? Você sente que seu sono é agitado ou perturbado em algumas noites?\nINSÔNIA INTERMEDIÁRIA\n',
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
          '\nITEM 9:\nDurante esta última semana, você tem acordado no meio da noite? SE SIM: Você sai da cama? O que você faz? (somente vai ao banheiro?) Quando volta para a cama, você volta a dormir logo? Você sente que seu sono é agitado ou perturbado em algumas noites?\nINSÔNIA INTERMEDIÁRIA\n',
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
          '\nITEM 10:\nDurante esta última semana, você tem acordado no meio da noite? SE SIM: Você sai da cama? O que você faz? (somente vai ao banheiro?) Quando volta para a cama, você volta a dormir logo? Você sente que seu sono é agitado ou perturbado em algumas noites?\nINSÔNIA INTERMEDIÁRIA\n',
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
          '\nITEM 11:\nDurante esta última semana, você tem acordado no meio da noite? SE SIM: Você sai da cama? O que você faz? (somente vai ao banheiro?) Quando volta para a cama, você volta a dormir logo? Você sente que seu sono é agitado ou perturbado em algumas noites?\nINSÔNIA INTERMEDIÁRIA\n',
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
          '\nITEM 12:\nDurante esta última semana, você tem acordado no meio da noite? SE SIM: Você sai da cama? O que você faz? (somente vai ao banheiro?) Quando volta para a cama, você volta a dormir logo? Você sente que seu sono é agitado ou perturbado em algumas noites?\nINSÔNIA INTERMEDIÁRIA\n',
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
          '\nITEM 13:\nDurante esta última semana, você tem acordado no meio da noite? SE SIM: Você sai da cama? O que você faz? (somente vai ao banheiro?) Quando volta para a cama, você volta a dormir logo? Você sente que seu sono é agitado ou perturbado em algumas noites?\nINSÔNIA INTERMEDIÁRIA\n',
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
          '\nITEM 14:\nDurante esta última semana, você tem acordado no meio da noite? SE SIM: Você sai da cama? O que você faz? (somente vai ao banheiro?) Quando volta para a cama, você volta a dormir logo? Você sente que seu sono é agitado ou perturbado em algumas noites?\nINSÔNIA INTERMEDIÁRIA\n',
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
          '\nITEM 15:\nDurante esta última semana, você tem acordado no meio da noite? SE SIM: Você sai da cama? O que você faz? (somente vai ao banheiro?) Quando volta para a cama, você volta a dormir logo? Você sente que seu sono é agitado ou perturbado em algumas noites?\nINSÔNIA INTERMEDIÁRIA\n',
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
          '\nITEM 16:\nDurante esta última semana, você tem acordado no meio da noite? SE SIM: Você sai da cama? O que você faz? (somente vai ao banheiro?) Quando volta para a cama, você volta a dormir logo? Você sente que seu sono é agitado ou perturbado em algumas noites?\nINSÔNIA INTERMEDIÁRIA\n',
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
          '\nITEM 17:\nDurante esta última semana, você tem acordado no meio da noite? SE SIM: Você sai da cama? O que você faz? (somente vai ao banheiro?) Quando volta para a cama, você volta a dormir logo? Você sente que seu sono é agitado ou perturbado em algumas noites?\nINSÔNIA INTERMEDIÁRIA\n',
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
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _questionIndex < _questions.length
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _questions[_questionIndex]['questionText'] as String,
                textAlign: TextAlign.center, // Centralizando o texto
                style: Theme.of(context).textTheme.titleLarge,
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
              Text('Total Score: $_totalScore'),
            ],
          );
  }
}
