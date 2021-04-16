import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/model/categoria_model.dart';
import 'package:rosilagropecuaria/app/modules/model/produto_model.dart';
import 'package:rosilagropecuaria/app/modules/repositories/interfaces/categoria_repository_interface.dart';
import 'package:rosilagropecuaria/app/modules/repositories/interfaces/produtos_repository_interface.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final ICategoriaRepository catRepository;
  final IProdutosRepository prodRepository;

  @observable
  List<CategoriaModel> categoriaList;

  @observable
  List<ProdutoModel> produtoList;

  _HomeControllerBase(this.catRepository, this.prodRepository) {
    getCategoria();
    getProduto();
  }

  @action
  getCategoria() async {
    categoriaList = await catRepository.getCategoria();
  }

  @action
  getProduto() async {
    produtoList = await prodRepository.getDestaque();
  }
}
