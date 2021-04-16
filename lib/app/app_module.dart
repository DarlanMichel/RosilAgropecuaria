import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rosilagropecuaria/app/app_controller.dart';
import 'package:rosilagropecuaria/app/modules/cadastro/cadastro_controller.dart';
import 'package:rosilagropecuaria/app/modules/cadastro/cadastro_module.dart';
import 'package:rosilagropecuaria/app/modules/carrinho/carrinho_controller.dart';
import 'package:rosilagropecuaria/app/modules/carrinho/carrinho_module.dart';
import 'package:rosilagropecuaria/app/modules/favoritos/favoritos_controller.dart';
import 'package:rosilagropecuaria/app/modules/favoritos/favoritos_module.dart';
import 'package:rosilagropecuaria/app/modules/home/home_controller.dart';
import 'package:rosilagropecuaria/app/modules/home/home_module.dart';
import 'package:rosilagropecuaria/app/modules/login/login_controller.dart';
import 'package:rosilagropecuaria/app/modules/perfil/endereco/cad_end/cad_end_controller.dart';
import 'package:rosilagropecuaria/app/modules/perfil/endereco/cad_end/cad_end_page.dart';
import 'package:rosilagropecuaria/app/modules/perfil/endereco/endereco_controller.dart';
import 'package:rosilagropecuaria/app/modules/perfil/minha_conta/minha_conta_controller.dart';
import 'package:rosilagropecuaria/app/modules/perfil/pedidos/pedidos_controller.dart';
import 'package:rosilagropecuaria/app/modules/perfil/perfil_controller.dart';
import 'package:rosilagropecuaria/app/modules/perfil/perfil_module.dart';
import 'package:rosilagropecuaria/app/modules/perfil/sobre/sobre_controller.dart';
import 'package:rosilagropecuaria/app/modules/produtos/produtos_controller.dart';
import 'package:rosilagropecuaria/app/modules/produtos/produtos_page.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/login/login_module.dart';
import 'package:rosilagropecuaria/app/modules/repositories/produtos_repository.dart';
import 'package:rosilagropecuaria/app/modules/splash/splash_controller.dart';
import 'package:rosilagropecuaria/app/modules/splash/splash_module.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'modules/perfil/endereco/endereco_page.dart';
import 'modules/perfil/minha_conta/minha_conta_page.dart';
import 'modules/perfil/pedidos/pedidos_page.dart';
import 'modules/perfil/sobre/sobre_page.dart';

class AppModule extends Module {

  final SharedPreferences shared;

  AppModule(this.shared);

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
        $CadEndController,
        $ProdutosRepository,
        Bind((i) => SplashController(i.get<FirebaseAuth>())),
        
        Bind((i) => FirebaseAuth.instance),
        Bind((i) => FirebaseFirestore.instance),
  ];

  @override
  final List<ModularRoute> routes = [
        ModuleRoute(Modular.initialRoute, module: SplashModule()),
        ModuleRoute('/home', module: HomeModule(), transition: TransitionType.fadeIn),
        ModuleRoute('/cadastro', module:  CadastroModule(), transition: TransitionType.fadeIn),
        ModuleRoute('/login', module: LoginModule(), transition: TransitionType.fadeIn),
        ChildRoute('/produtos', child: (_, args) => ProdutosPage(categoria: args.data,), transition: TransitionType.fadeIn),
        ModuleRoute('/favoritos', module:  FavoritosModule(), transition: TransitionType.fadeIn),
        ModuleRoute('/perfil', module: PerfilModule(), transition: TransitionType.fadeIn),
        ModuleRoute('/carrinho', module: CarrinhoModule(), transition: TransitionType.fadeIn),
        ChildRoute('/enderecos', child: (_, args) => EnderecoPage(), transition: TransitionType.fadeIn),
        ChildRoute('/minhaconta', child: (_, args) => MinhaContaPage(), transition: TransitionType.fadeIn),
        ChildRoute('/pedidos', child: (_, args) => PedidosPage(), transition: TransitionType.fadeIn),
        ChildRoute('/sobre', child: (_, args) => SobrePage(), transition: TransitionType.fadeIn),
        ChildRoute('/cadend', child: (_, args) => CadEndPage(), transition: TransitionType.fadeIn),
      ];
}
