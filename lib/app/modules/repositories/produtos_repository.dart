import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rosilagropecuaria/app/modules/model/produto_model.dart';
import 'package:rosilagropecuaria/app/modules/repositories/produtos_repository_interface.dart';

class ProdutosRepository implements IProdutosRepository{
  final FirebaseFirestore firestore;

  ProdutosRepository(this.firestore);
  
  @override
  Stream<List<ProdutoModel>> getProduto() {
   return firestore.collection('produtos').snapshots().map((query) {
      return query.docs.map((doc) {
        return ProdutoModel.fromDocument(doc);
      }).toList();
    });
  }

}