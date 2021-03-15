import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/carrinho/carrinho_controller.dart';
import 'package:rosilagropecuaria/app/modules/carrinho/carrinho_page.dart';

class CarrinhoModule extends Module {
  @override
  final List<Bind> binds = [
    $CarrinhoController
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => CarrinhoPage()),
  ];

}
