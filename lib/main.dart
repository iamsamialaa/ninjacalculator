import 'package:flutter/material.dart';
import 'package:ninjacalculator/Screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NinJaCaLc',
      theme: ThemeData(
          colorScheme: ColorScheme.light(
        surface: Colors.cyan.shade900,
      )),
      home: const Splash(),
    );
  }
}
