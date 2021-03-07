import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/favoritos/favoritos_controller.dart';
import 'package:rosilagropecuaria/app/modules/favoritos/favoritos_page.dart';

class FavoritosModule extends ChildModule {
  @override
  List<Bind> get binds => [
    $FavoritosController
  ];

  @override
  List<ModularRouter> get routers => [
    ModularRouter(Modular.initialRoute, child: (_, args) => FavoritosPage()),
  ];

  static Inject get to => Inject<FavoritosModule>.of();
}
