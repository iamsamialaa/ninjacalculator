import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color color;
  final Color textcolor;
  final String text;
  final VoidCallback butttontab;

  const MyButton({
    super.key,
    required this.color,
    required this.text,
    required this.textcolor,
    required this.butttontab,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: butttontab,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color,
          ),
          child: Center(
              child: Text(
            text,
            style: TextStyle(
              color: textcolor,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
      ),
    );
  }
}
