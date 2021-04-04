import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/produtos/produtos_controller.dart';
import 'package:rosilagropecuaria/app/modules/produtos/produtos_page.dart';
import 'package:rosilagropecuaria/app/modules/repositories/produtos_repository.dart';
import 'package:rosilagropecuaria/app/modules/repositories/produtos_repository_interface.dart';

class ProdutosModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => ProdutosController(i.get<ProdutosRepository>())),

    Bind<IProdutosRepository>((i) => ProdutosRepository(FirebaseFirestore.instance)),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => ProdutosPage()),
  ];
}
