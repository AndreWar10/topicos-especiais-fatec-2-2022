import 'package:aula1/utils/default/rotas/default_route.dart';
import 'package:aula1/utils/default/pages/splash/default_splash.dart';
import 'package:aula1/widgets/pages/splash/splash_widget.dart';
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
    //Animação tem a duração de 8s e depois o usuário é redirecionado para DashBoard
    Future.delayed(Duration(seconds: DefaultSplash.defautDuration)).then(
      (_) => Navigator.of(context).pushReplacementNamed(DefaultRoute.defaultDashRoute),
    );
  }

  @override
  Widget build(BuildContext context) => SplashAnimationWidget();
}
