import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/favoritos/favoritos_controller.dart';
import 'package:rosilagropecuaria/app/modules/favoritos/favoritos_page.dart';

class FavoritosModule extends Module {
  @override
  final List<Bind> binds = [
    $FavoritosController
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => FavoritosPage()),
  ];

}
