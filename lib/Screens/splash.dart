import 'package:flutter/material.dart';
import 'package:ninjacalculator/Screens/home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        if (mounted) {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const Home(),
              ));
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Center(
            child: Image.asset(
              'assets/images/White.png',
            ),
          ),
        ),
        bottomNavigationBar: Image.asset(
          'assets/images/Brand White.gif',
          repeat: ImageRepeat.noRepeat,
          color: Colors.white,
          height: 100,
        ));
  }
}
