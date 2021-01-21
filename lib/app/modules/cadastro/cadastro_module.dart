import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/cadastro/cadastro_controller.dart';
import 'package:rosilagropecuaria/app/modules/cadastro/cadastro_page.dart';

class CadastroModule extends ChildModule {
  @override
  List<Bind> get binds => [
    $CadastroController
  ];

  @override
  List<ModularRouter> get routers => [
    ModularRouter(Modular.initialRoute, child: (_, args) => CadastroPage()),
  ];

  static Inject get to => Inject<CadastroModule>.of();
}
