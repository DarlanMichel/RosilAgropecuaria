import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'cad_end_controller.g.dart';

@Injectable()
class CadEndController = _CadEndControllerBase with _$CadEndController;

abstract class _CadEndControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
