import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/model/produto_model.dart';
import 'package:rosilagropecuaria/app/modules/repositories/interfaces/produtos_repository_interface.dart';

part 'produtos_controller.g.dart';

@Injectable()
class ProdutosController = _ProdutosControllerBase with _$ProdutosController;

abstract class _ProdutosControllerBase with Store {
  final IProdutosRepository repository;
  final String categoria;

  @observable
  List<ProdutoModel> prodList;

  _ProdutosControllerBase({this.repository, @Data this.categoria}) {
    getProduto();
  }

  @action
  getProduto() async {
    prodList = await repository.getProduto(categoria);
  }
}
