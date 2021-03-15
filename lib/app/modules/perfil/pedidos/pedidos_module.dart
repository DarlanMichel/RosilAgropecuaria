import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/perfil/pedidos/pedidos_controller.dart';
import 'package:rosilagropecuaria/app/modules/perfil/pedidos/pedidos_page.dart';

class PedidosModule extends Module {
  @override
  final List<Bind> binds = [
    $PedidosController
  ];

  @override
  final List<ModularRoute>  routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => PedidosPage()),
  ];

}
