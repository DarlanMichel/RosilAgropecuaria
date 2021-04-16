import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/model/categoria_model.dart';

abstract class ICategoriaRepository implements Disposable{
  Future<List<CategoriaModel>> getCategoria();
}
