import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/model/categoria_model.dart';
import 'package:rosilagropecuaria/app/modules/repositories/categoria_repository_interface.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final ICategoriaRepository catRepository;

  @observable
  ObservableStream<List<CategoriaModel>> categoriaList;

  _HomeControllerBase(this.catRepository){
    getCategoria();
  }

  @action
  getCategoria() {
    categoriaList = catRepository.getCategoria().asObservable();
  }
}
