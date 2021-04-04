import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/model/produto_model.dart';
import 'package:rosilagropecuaria/app/modules/repositories/produtos_repository_interface.dart';

part 'produtos_controller.g.dart';

@Injectable()
class ProdutosController = _ProdutosControllerBase with _$ProdutosController;

abstract class _ProdutosControllerBase with Store {
  final IProdutosRepository repository;

  @observable
  ObservableStream<List<ProdutoModel>> prodList;

  _ProdutosControllerBase(this.repository){
    getProduto();
  }

  @action
  getProduto() {
    prodList = repository.getProduto().asObservable();
  }
}
