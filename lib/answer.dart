import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(54, 54, 54, 1),
            offset: Offset(0, 20),
            blurRadius: 10,
          ),
        ],
        color: Color.fromRGBO(60, 179, 113, 1),
        border: Border.all(
          color: Color.fromRGBO(60, 179, 113, 1),
          width: 5,
        ),
      ),
      margin: const EdgeInsets.all(6),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Color.fromRGBO(60, 179, 113, 1),
          padding: EdgeInsets.all(15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(
              color: Color.fromRGBO(60, 179, 113, 1),
              width: 5,
            ),
          ),
          elevation: 0, // removes shadow
        ),
        onPressed: () => selectHandler(),
        child: Text(
          answerText,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromRGBO(248, 248, 255, 1),
            fontFamily: 'Roboto',
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
