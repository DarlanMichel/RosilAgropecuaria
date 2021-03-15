import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/perfil/minha_conta/minha_conta_controller.dart';
import 'package:rosilagropecuaria/app/modules/perfil/minha_conta/minha_conta_page.dart';

class MinhaContaModule extends Module {
  @override
  final List<Bind> binds = [
    $MinhaContaController
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => MinhaContaPage()),
  ];

}
