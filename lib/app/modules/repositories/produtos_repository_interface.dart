import 'package:rosilagropecuaria/app/modules/model/produto_model.dart';

abstract class IProdutosRepository {
  Stream<List<ProdutoModel>> getProduto();
}