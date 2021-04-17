import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/model/produto_model.dart';

abstract class IProdutosRepository implements Disposable{
  Future<List<ProdutoModel>> getProduto(String categoria, String pesquisa);
  Future<List<ProdutoModel>> getDestaque();
}