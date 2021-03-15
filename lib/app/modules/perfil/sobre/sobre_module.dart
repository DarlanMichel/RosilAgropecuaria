import 'package:rosilagropecuaria/app/modules/perfil/sobre/sobre_page.dart';

import 'sobre_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SobreModule extends Module {
  @override
  final List<Bind> binds = [
        $SobreController,
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => SobrePage()),
  ];

}
