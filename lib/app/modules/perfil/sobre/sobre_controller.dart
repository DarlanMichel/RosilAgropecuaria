import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'sobre_controller.g.dart';

@Injectable()
class SobreController = _SobreControllerBase with _$SobreController;

abstract class _SobreControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
