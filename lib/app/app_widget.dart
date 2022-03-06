import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:asuka/asuka.dart' as asuka show builder;

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    final ThemeData theme = ThemeData(
      primaryColor: Color.fromRGBO(40, 75, 140, 1),
      primaryColorLight: Colors.white,
      primaryColorDark: Color.fromRGBO(206, 206, 216, 1),
      backgroundColor: Color.fromRGBO(233, 243, 253, 1.0),
    );
    return MaterialApp.router(
      title: 'Rosil Agropecuária',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme
            .copyWith(secondary: Color.fromRGBO(101, 162, 188, 1)),
      ),
      debugShowCheckedModeBanner: false,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
      builder: asuka.builder,
    );
  }
}
