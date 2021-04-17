import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/model/produto_model.dart';
import 'package:rosilagropecuaria/app/modules/repositories/interfaces/produtos_repository_interface.dart';

part 'produtos_repository.g.dart';

@Injectable()
class ProdutosRepository implements IProdutosRepository {
  final FirebaseFirestore firestore;

  ProdutosRepository(this.firestore);

  @override
  Future<List<ProdutoModel>> getProduto(String categoria, String pesquisa) {
    return categoria == '0'
        ? firestore
            .collection('produtos')
            .orderBy('descricao')
            .startAt([pesquisa])
            .endAt([pesquisa + '\uf8ff'])
            .get()
            .then((query) {
            return query.docs.map((doc) {
              return ProdutoModel.fromDocument(doc);
            }).toList();
          })
        : firestore
            .collection('produtos')
            .orderBy('descricao')
            .where('categoria', isEqualTo: categoria)
            .startAt([pesquisa])
            .endAt([pesquisa + '\uf8ff'])
            .get()
            .then((query) {
            return query.docs.map((doc) {
              return ProdutoModel.fromDocument(doc);
            }).toList();
          });
  }

  @override
  Future<List<ProdutoModel>> getDestaque() {
    return firestore
        .collection('produtos')
        .orderBy('descricao')
        .where('destaque', isEqualTo: true)
        .get()
        .then((query) {
      return query.docs.map((doc) {
        return ProdutoModel.fromDocument(doc);
      }).toList();
    });
  }

  @override
  void dispose() {}
}
