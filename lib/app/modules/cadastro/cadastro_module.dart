import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/cadastro/cadastro_controller.dart';
import 'package:rosilagropecuaria/app/modules/cadastro/cadastro_page.dart';

class CadastroModule extends Module {
  @override
  final List<Bind> binds = [
    $CadastroController
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => CadastroPage()),
  ];
}
