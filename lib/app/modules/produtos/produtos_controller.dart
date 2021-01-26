import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'produtos_controller.g.dart';

@Injectable()
class ProdutosController = _ProdutosControllerBase with _$ProdutosController;

abstract class _ProdutosControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
