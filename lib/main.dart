import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/app_module.dart';
import 'package:rosilagropecuaria/app/app_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //SharedPreferences shared = await SharedPreferences.getInstance();
  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}
