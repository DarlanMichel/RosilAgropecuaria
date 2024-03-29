import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/model/produto_model.dart';
import 'package:rosilagropecuaria/app/modules/repositories/interfaces/produtos_repository_interface.dart';

part 'produtos_controller.g.dart';

@Injectable()
class ProdutosController = _ProdutosControllerBase with _$ProdutosController;

abstract class _ProdutosControllerBase with Store {
  late final IProdutosRepository repository;
  final String? categoria;

  @observable
  List<ProdutoModel>? prodList;

  _ProdutosControllerBase({required this.repository, @Data this.categoria}) {
    getProduto();
  }

  @action
  getProduto() async {
    prodList = await repository.getProduto(categoria!, pesquisa);
  }

  @observable
  String pesquisa = '';

  @action
  void setPesquisa(String _pesquisa){
    pesquisa = _pesquisa.toLowerCase();
    repository.getProduto(categoria!, _pesquisa).then((data)=> prodList = data);
  }
}
