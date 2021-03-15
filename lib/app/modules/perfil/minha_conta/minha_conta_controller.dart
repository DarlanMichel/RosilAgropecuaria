import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'minha_conta_controller.g.dart';

@Injectable()
class MinhaContaController = _MinhaContaControllerBase
    with _$MinhaContaController;

abstract class _MinhaContaControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
