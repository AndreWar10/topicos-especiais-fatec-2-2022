import 'package:aula1/widgets/splash/splash_widget.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 8)).then(
      (_) => Navigator.of(context).pushReplacementNamed('/dashboard'),
    );
  }
  
  @override
  Widget build(BuildContext context) => SplashAnimationWidget();
}
