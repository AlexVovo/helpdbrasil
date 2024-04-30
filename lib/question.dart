import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              width: 400,
              height: 65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: Color.fromRGBO(60, 150, 113, 1),
              ),
              child: Center(
                child: Text(
                  questionText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromRGBO(248, 248, 248, 1),
                    fontFamily: 'Roboto',
                    fontSize: 16.5,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
