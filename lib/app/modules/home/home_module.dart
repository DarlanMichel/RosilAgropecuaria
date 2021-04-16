import 'package:rosilagropecuaria/app/modules/produtos/produtos_page.dart';
import 'package:rosilagropecuaria/app/modules/repositories/categoria_repository.dart';
import 'package:rosilagropecuaria/app/modules/repositories/produtos_repository.dart';

import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
        $HomeController,
        $ProdutosRepository,
        $CategoriaRepository, 
  ];

  @override
  final List<ModularRoute> routes = [
        ChildRoute(Modular.initialRoute, child: (_, args) => HomePage()),
        ChildRoute('/produtos', child: (_, args) => ProdutosPage(categoria: args.data,), transition: TransitionType.fadeIn),
      ];

}
