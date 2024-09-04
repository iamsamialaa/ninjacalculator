import 'package:flutter/material.dart';
import 'package:ninjacalculator/utils/my_button.dart';

class ButtonGrid extends StatelessWidget {
  final List<String> buttons;
  final void Function(String) onTap;

  const ButtonGrid({
    super.key,
    required this.buttons,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: GridView.builder(
        itemCount: buttons.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemBuilder: (context, index) {
          String buttonText = buttons[index];
          Color buttonColor =
              isOperator(buttonText) ? Colors.orange : Colors.white;
          Color textColor =
              isOperator(buttonText) ? Colors.white : Colors.black;

          return MyButton(
            butttontab: () => onTap(buttonText),
            color: buttonColor,
            text: buttonText,
            textcolor: textColor,
          );
        },
      ),
    );
  }

  bool isOperator(String x) {
    return [
      '%',
      '/',
      'x',
      '-',
      '+',
      '=',
    ].contains(x);
  }
}
