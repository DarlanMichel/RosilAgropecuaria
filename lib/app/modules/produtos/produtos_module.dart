import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/produtos/produtos_controller.dart';
import 'package:rosilagropecuaria/app/modules/produtos/produtos_page.dart';

class ProdutosModule extends ChildModule {
  @override
  List<Bind> get binds => [
    $ProdutosController
  ];

  @override
  List<ModularRouter> get routers => [
    ModularRouter(Modular.initialRoute, child: (_, args) => ProdutosPage()),
  ];

  static Inject get to => Inject<ProdutosModule>.of();
}
