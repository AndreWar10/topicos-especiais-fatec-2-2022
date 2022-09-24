import 'package:aula1/pages/contatos/contatos_page.dart';
import 'package:aula1/pages/dashboard/dashboard_page.dart';
import 'package:aula1/pages/splash/splash_page.dart';
import 'package:aula1/pages/transferencias/lista_transferencia_page.dart';
import 'package:aula1/utils/default/rotas/default_route.dart';
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
      initialRoute: DefaultRoute.defaultSplashRoute,
      routes: {
        DefaultRoute.defaultSplashRoute: (_) => SplashPage(),
        DefaultRoute.defaultDashRoute: (_) => DashboardPage(),
        DefaultRoute.defaultListaRoute: (_) => ListaTransferenciasPage(),
        DefaultRoute.defaultContatoRoute: (_) => ContatosPage(),
      },
    );
  }
}