import 'package:aula1/pages/splash/splash_page.dart';
import 'package:aula1/pages/transferencia/lista_transferencia_page.dart';
import 'package:flutter/material.dart';

class RoutesWidget extends StatelessWidget {
  const RoutesWidget({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      initialRoute: '/splash',
      routes: {
        '/splash': (_) => SplashPage(),
        '/lista': (_) => ListaTransferenciasPage(),
      },//roo//root
    );
  }
}