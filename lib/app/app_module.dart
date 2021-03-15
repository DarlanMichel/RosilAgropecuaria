import 'package:rosilagropecuaria/app/app_controller.dart';
import 'package:rosilagropecuaria/app/modules/cadastro/cadastro_controller.dart';
import 'package:rosilagropecuaria/app/modules/carrinho/carrinho_controller.dart';
import 'package:rosilagropecuaria/app/modules/carrinho/carrinho_page.dart';
import 'package:rosilagropecuaria/app/modules/favoritos/favoritos_controller.dart';
import 'package:rosilagropecuaria/app/modules/home/home_controller.dart';
import 'package:rosilagropecuaria/app/modules/login/login_controller.dart';
import 'package:rosilagropecuaria/app/modules/perfil/endereco/cad_end/cad_end_controller.dart';
import 'package:rosilagropecuaria/app/modules/perfil/endereco/cad_end/cad_end_page.dart';
import 'package:rosilagropecuaria/app/modules/perfil/endereco/endereco_controller.dart';
import 'package:rosilagropecuaria/app/modules/perfil/minha_conta/minha_conta_controller.dart';
import 'package:rosilagropecuaria/app/modules/perfil/pedidos/pedidos_controller.dart';
import 'package:rosilagropecuaria/app/modules/perfil/perfil_controller.dart';
import 'package:rosilagropecuaria/app/modules/perfil/perfil_page.dart';
import 'package:rosilagropecuaria/app/modules/favoritos/favoritos_page.dart';
import 'package:rosilagropecuaria/app/modules/perfil/sobre/sobre_controller.dart';
import 'package:rosilagropecuaria/app/modules/produtos/produtos_controller.dart';
import 'package:rosilagropecuaria/app/modules/produtos/produtos_page.dart';
import 'package:rosilagropecuaria/app/modules/cadastro/cadastro_page.dart';
import 'package:rosilagropecuaria/app/modules/login/login_page.dart';
import 'package:rosilagropecuaria/app/modules/home/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/login/login_module.dart';
import 'modules/perfil/endereco/endereco_page.dart';
import 'modules/perfil/minha_conta/minha_conta_page.dart';
import 'modules/perfil/pedidos/pedidos_page.dart';
import 'modules/perfil/sobre/sobre_page.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
        $CarrinhoController,
        $PerfilController,
        $FavoritosController,
        $ProdutosController,
        $CadastroController,
        $LoginController,
        $HomeController,
        $AppController,
        $EnderecoController,
        $MinhaContaController,
        $PedidosController,
        $SobreController,
        $CadEndController
  ];

  @override
  final List<ModularRoute> routes = [
        ModuleRoute(Modular.initialRoute, module: LoginModule()),
        ChildRoute('/home', child: (_, args) => HomePage(), transition: TransitionType.fadeIn),
        ChildRoute('/cadastro', child: (_, args) => CadastroPage(), transition: TransitionType.fadeIn),
        ChildRoute('/login', child: (_, args) => LoginPage(), transition: TransitionType.fadeIn),
        ChildRoute('/produtos', child: (_, args) => ProdutosPage(), transition: TransitionType.fadeIn),
        ChildRoute('/favoritos', child: (_, args) => FavoritosPage(), transition: TransitionType.fadeIn),
        ChildRoute('/perfil', child: (_, args) => PerfilPage(), transition: TransitionType.fadeIn),
        ChildRoute('/carrinho', child: (_, args) => CarrinhoPage(), transition: TransitionType.fadeIn),
        ChildRoute('/enderecos', child: (_, args) => EnderecoPage(), transition: TransitionType.fadeIn),
        ChildRoute('/minhaconta', child: (_, args) => MinhaContaPage(), transition: TransitionType.fadeIn),
        ChildRoute('/pedidos', child: (_, args) => PedidosPage(), transition: TransitionType.fadeIn),
        ChildRoute('/sobre', child: (_, args) => SobrePage(), transition: TransitionType.fadeIn),
        ChildRoute('/cadend', child: (_, args) => CadEndPage(), transition: TransitionType.fadeIn),
      ];
}
