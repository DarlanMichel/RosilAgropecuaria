import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/model/endereco_model.dart';
import 'package:rosilagropecuaria/app/modules/repositories/interfaces/endereco_repository_interface.dart';

part 'endereco_controller.g.dart';

@Injectable()
class EnderecoController = _EnderecoControllerBase with _$EnderecoController;

abstract class _EnderecoControllerBase with Store {
  final IEnderecoRepository repository;

  _EnderecoControllerBase(this.repository) {
    getEndereco();
  }

  @observable
  ObservableStream<List<EnderecoModel>>? listEnd;

  @action
  getEndereco() {
    listEnd = repository.getEndereco().asObservable();
  }

  @action
  deleteEndereco(String idEnd) async {
    await repository.deleteEnd(idEnd);
  }

  List<String> opEnd = ["Editar", "Excluir"];

  @observable
  EnderecoModel? model;

  @action
  selecOption(String _op) async {
    switch (_op) {
      case "Editar":
        Modular.to.pushNamed('/cadend', arguments: model);
        break;
      case "Excluir":
        deleteEndereco(model!.id);
        break;
    }
  }
}
