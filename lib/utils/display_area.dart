import 'package:flutter/material.dart';

class DisplayArea extends StatelessWidget {
  final String userQuestion;
  final String userAnswer;

  const DisplayArea({
    super.key,
    required this.userQuestion,
    required this.userAnswer,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: Colors.cyan.shade800,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              alignment: Alignment.centerLeft,
              child: Text(
                userQuestion,
                style: const TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              alignment: Alignment.centerRight,
              child: Text(
                userAnswer,
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
