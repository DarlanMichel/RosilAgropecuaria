import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/perfil/endereco/endereco_controller.dart';
import 'package:rosilagropecuaria/app/modules/perfil/endereco/endereco_page.dart';

class EnderecoModule extends Module {
  @override
  final List<Bind> binds = [
    $EnderecoController
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => EnderecoPage()),
  ];

}
