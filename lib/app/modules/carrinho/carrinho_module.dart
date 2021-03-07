import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/carrinho/carrinho_controller.dart';
import 'package:rosilagropecuaria/app/modules/carrinho/carrinho_page.dart';

class CarrinhoModule extends ChildModule {
  @override
  List<Bind> get binds => [
    $CarrinhoController
  ];

  @override
  List<ModularRouter> get routers => [
    ModularRouter(Modular.initialRoute, child: (_, args) => CarrinhoPage()),
  ];

  static Inject get to => Inject<CarrinhoModule>.of();
}
