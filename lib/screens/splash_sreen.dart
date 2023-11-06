import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          //* background image

          Container(
            // height: double.infinity,
            child: Image.asset(
              'assets/images/bg-12.png',
              height: 800,
            ),
          ),
        ],
      )),
    );
  }
}