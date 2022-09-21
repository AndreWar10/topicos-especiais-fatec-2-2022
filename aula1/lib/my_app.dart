import 'package:aula1/utils/custom_theme.dart';
import 'package:aula1/widgets/rotas/routes_widget.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver{
  //tema do App inicia com light
  var theme = CustomTheme.lightTheme;
  var darkTheme = CustomTheme.darkTheme;
  var lightTheme = CustomTheme.lightTheme;
  
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    changeTheme();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
  
  @override
  void didChangePlatformBrightness() {
    changeTheme();
  }

  changeTheme() {
        //pega o tema encontado no dispositivo
    var brightness = WidgetsBinding.instance.window.platformBrightness;
    brightness == Brightness.dark ? theme = darkTheme : theme = lightTheme;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return RoutesWidget(theme: theme);
  }
}


