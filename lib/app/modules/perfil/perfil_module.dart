import 'package:rosilagropecuaria/app/modules/login/presenter/controllers/login_controller.dart';
import 'package:rosilagropecuaria/app/modules/login/login_module.dart';
import 'package:rosilagropecuaria/app/modules/perfil/minha_conta/minha_conta_controller.dart';
import 'package:rosilagropecuaria/app/modules/perfil/sobre/sobre_controller.dart';
import 'pedidos/pedidos_controller.dart';
import 'endereco/endereco_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/perfil/perfil_controller.dart';
import 'package:rosilagropecuaria/app/modules/perfil/perfil_page.dart';

class PerfilModule extends Module {
  @override
  final List<Bind> binds = [
    $PedidosController,
    $EnderecoController,
    $PerfilController,
    $SobreController,
    $MinhaContaController,
    $LoginController
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => PerfilPage()),
    ModuleRoute("/login",
        module: LoginModule(), transition: TransitionType.fadeIn)
  ];

}
