import 'package:rosilagropecuaria/app/modules/model/categoria_model.dart';

abstract class ICategoriaRepository {
  Stream<List<CategoriaModel>> getCategoria();
}
