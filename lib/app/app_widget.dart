import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      title: 'Rosil Agropecuária',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(40, 75, 140, 1),
        accentColor: Color.fromRGBO(101, 162, 188, 1),
        primaryColorLight: Colors.white,
        primaryColorDark: Color.fromRGBO(206, 206, 216, 1),
        backgroundColor: Color.fromRGBO(233, 243, 253, 1.0),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
