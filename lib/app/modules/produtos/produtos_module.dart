import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/produtos/produtos_controller.dart';
import 'package:rosilagropecuaria/app/modules/produtos/produtos_page.dart';
import 'package:rosilagropecuaria/app/modules/repositories/produtos_repository.dart';

class ProdutosModule extends Module {
  @override
  final List<Bind> binds = [
    $ProdutosController,
    $ProdutosRepository
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => ProdutosPage()),
  ];
}
