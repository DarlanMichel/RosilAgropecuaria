import 'package:rosilagropecuaria/app/modules/perfil/endereco/cad_end/cad_end_page.dart';

import 'cad_end_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CadEndModule extends Module {
  @override
  final List<Bind> binds = [
        $CadEndController,
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => CadEndPage()),
  ];

}
