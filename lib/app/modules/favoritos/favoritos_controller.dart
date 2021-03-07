import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'favoritos_controller.g.dart';

@Injectable()
class FavoritosController = _FavoritosControllerBase with _$FavoritosController;

abstract class _FavoritosControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
