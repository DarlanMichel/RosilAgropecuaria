import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/model/categoria_model.dart';
import 'package:rosilagropecuaria/app/modules/repositories/interfaces/categoria_repository_interface.dart';

part 'categoria_repository.g.dart';

@Injectable()
class CategoriaRepository implements ICategoriaRepository {
  final FirebaseFirestore firestore;

  CategoriaRepository(this.firestore);

  @override
  Future<List<CategoriaModel>> getCategoria() {
    return firestore.collection('categoria').
    orderBy('desc').
    get().then((query) {
      return query.docs.map((doc) {
        return CategoriaModel.fromDocument(doc);
      }).toList();
    });
  }

  @override
  void dispose() {}
}
