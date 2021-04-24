import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/model/endereco_model.dart';
import 'package:rosilagropecuaria/app/modules/repositories/interfaces/endereco_repository_interface.dart';

part 'endereco_controller.g.dart';

@Injectable()
class EnderecoController = _EnderecoControllerBase with _$EnderecoController;

abstract class _EnderecoControllerBase with Store {
  final IEnderecoRepository repository;

  _EnderecoControllerBase(this.repository){
    getEndereco();
  }

  @observable
  List<EnderecoModel> listEnd;

  @action
  getEndereco() async {
    listEnd = await repository.getEndereco();
  }
}
