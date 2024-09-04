import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import '../utils/button_grid.dart';
import '../utils/display_area.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var userQuestion = '';
  var userAnswer = '';

  final List<String> buttons = [
    'C',
    'Del',
    '%',
    '/',
    '9',
    '8',
    '7',
    'x',
    '6',
    '5',
    '4',
    '-',
    '3',
    '2',
    '1',
    '+',
    '0',
    '.',
    'ANS',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DisplayArea(
            userQuestion: userQuestion,
            userAnswer: userAnswer,
          ),
          ButtonGrid(
            buttons: buttons,
            onTap: _onButtonPressed,
          ),
        ],
      ),
      bottomNavigationBar: Image.asset(
        'assets/images/Brand White.gif',
        repeat: ImageRepeat.noRepeat,
        color: Colors.white,
        height: 50,
      ),
    );
  }

  void _onButtonPressed(String buttonText) {
    setState(() {
      switch (buttonText) {
        case 'C':
          userQuestion = '';
          userAnswer = '';
          break;
        case 'Del':
          if (userQuestion.isNotEmpty) {
            userQuestion = userQuestion.substring(0, userQuestion.length - 1);
          }
          break;
        case '=':
          _calculateAnswer();
          break;
        default:
          userQuestion += buttonText;
      }
    });
  }

  void _calculateAnswer() {
    String finalQuestion = userQuestion.replaceAll('x', '*');
    Parser p = Parser();
    Expression exp = p.parse(finalQuestion);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    userAnswer = eval.toString();
  }
}
