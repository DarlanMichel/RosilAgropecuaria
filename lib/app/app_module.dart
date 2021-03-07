import 'package:rosilagropecuaria/app/modules/carrinho/carrinho_page.dart';

import 'modules/carrinho/carrinho_controller.dart';
import 'package:rosilagropecuaria/app/modules/perfil/perfil_page.dart';

import 'modules/perfil/perfil_controller.dart';
import 'package:rosilagropecuaria/app/modules/favoritos/favoritos_page.dart';

import 'modules/favoritos/favoritos_controller.dart';
import 'package:rosilagropecuaria/app/modules/produtos/produtos_page.dart';

import 'modules/produtos/produtos_controller.dart';
import 'package:rosilagropecuaria/app/modules/cadastro/cadastro_page.dart';
import 'package:rosilagropecuaria/app/modules/login/login_page.dart';

import 'modules/cadastro/cadastro_controller.dart';
import 'package:rosilagropecuaria/app/modules/home/home_controller.dart';
import 'package:rosilagropecuaria/app/modules/home/home_page.dart';

import 'modules/login/login_controller.dart';
import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:rosilagropecuaria/app/app_widget.dart';
import 'package:rosilagropecuaria/app/modules/login/login_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $CarrinhoController,
        $PerfilController,
        $FavoritosController,
        $ProdutosController,
        $CadastroController,
        $LoginController,
        $HomeController,
        $AppController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: LoginModule()),
        ModularRouter('/home',
            child: (_, args) => HomePage(), transition: TransitionType.fadeIn),
        ModularRouter('/cadastro',
            child: (_, args) => CadastroPage(),
            transition: TransitionType.fadeIn),
        ModularRouter('/login',
            child: (_, args) => LoginPage(), transition: TransitionType.fadeIn),
        ModularRouter('/produtos',
            child: (_, args) => ProdutosPage(),
            transition: TransitionType.fadeIn),
        ModularRouter('/favoritos',
            child: (_, args) => FavoritosPage(),
            transition: TransitionType.fadeIn),
        ModularRouter('/perfil',
            child: (_, args) => PerfilPage(),
            transition: TransitionType.fadeIn),
        ModularRouter('/carrinho',
            child: (_, args) => CarrinhoPage(),
            transition: TransitionType.fadeIn),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
