import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashAnimationWidget extends StatelessWidget {
  const SplashAnimationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Lottie.asset('assets/lottie.json'),
        ),
      ),
    );
  }
}