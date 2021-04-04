import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rosilagropecuaria/app/modules/model/categoria_model.dart';
import 'package:rosilagropecuaria/app/modules/repositories/categoria_repository_interface.dart';

class CategoriaRepository implements ICategoriaRepository {
  final FirebaseFirestore firestore;

  CategoriaRepository(this.firestore);

  @override
  Stream<List<CategoriaModel>> getCategoria() {
    return firestore.collection('categoria').snapshots().map((query) {
      return query.docs.map((doc) {
        return CategoriaModel.fromDocument(doc);
      }).toList();
    });
  }
}
