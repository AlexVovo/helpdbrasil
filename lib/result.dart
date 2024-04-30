import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  // Remark Logic
  String get resultPhrase {
    if (resultScore >= 0 && resultScore <= 7) {
      return 'Não Apresenta Sintomas Sugestivos de Depressão\nScore entre 0 e 7';
    } else if (resultScore >= 8 && resultScore <= 13) {
      return 'Apresenta Sintomas Sugestivos de Depressão Leve\nScore entre 8 e 13';
    } else if (resultScore >= 14 && resultScore <= 18) {
      return 'Apresenta Sintomas Sugestivos de Depressão Moderada\nScore entre 14 e 18';
    } else if (resultScore >= 19 && resultScore <= 22) {
      return 'Apresenta Sintomas Sugestivos de Depressão Grave\nScore entre 19 e 22';
    } else {
      return 'Apresenta Sintomas Sugestivos de Depressão Muito Grave\nScore maior ou igual a 23';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(46, 139, 87, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Entrevista Finalizada',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Roboto',
              fontSize: 25,
              fontWeight: FontWeight.normal,
            ),
          ),
          Text(
            'O entrevistador deve se basear no julgamento clínico para tomada de decisão em relação ao tratamento',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/logo17.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 255, 127, 1),
                  offset: Offset(0, 10),
                  blurRadius: 50,
                ),
              ],
              color: Color.fromRGBO(54, 54, 54, 1),
              border: Border.all(
                color: Colors.white70,
                width: 1,
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 17),
            margin: EdgeInsets.all(60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Score: $resultScore',
                  style: TextStyle(
                    fontSize: 23,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Text(
            resultPhrase,
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
