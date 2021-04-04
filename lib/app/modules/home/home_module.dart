import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rosilagropecuaria/app/modules/repositories/categoria_repository.dart';
import 'package:rosilagropecuaria/app/modules/repositories/categoria_repository_interface.dart';

import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
        $HomeController,

        Bind<ICategoriaRepository>((i) => CategoriaRepository(FirebaseFirestore.instance)),
      ];

  @override
  final List<ModularRoute> routes = [
        ChildRoute(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

}
