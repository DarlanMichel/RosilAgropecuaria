import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      title: 'Flutter Slidy',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(25, 90, 121, 1),
        accentColor: Color.fromRGBO(22, 160, 226, 1),
        primaryColorLight: Colors.white,
        primaryColorDark: Color.fromRGBO(206, 206, 216, 1),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
