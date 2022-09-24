import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashAnimationWidget extends StatelessWidget {
  const SplashAnimationWidget({Key? key}) : super(key: key);
  
  //Animação que está localizada na pasta assets em formato json
  final String defaultAnimation = 'assets/lottie.json';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Lottie.asset(defaultAnimation),
        ),
      ),
    );
  }
}
