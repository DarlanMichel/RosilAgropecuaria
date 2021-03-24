import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/helpers/firebase_errors.dart';
import 'package:rosilagropecuaria/app/modules/model/cliente.dart';

part 'cadastro_controller.g.dart';

@Injectable()
class CadastroController = _CadastroControllerBase with _$CadastroController;

abstract class _CadastroControllerBase with Store {
  final FirebaseAuth auth = FirebaseAuth.instance;

  @observable
  Cliente cliente;

  @observable
  bool loading = false;

  @action
  void setLoading(bool _loading) => loading = _loading;

  @action
  Future<void> signUp({Cliente cliente, Function onFail, Function onSuccess}) async {
    setLoading(true);
    try {
      final UserCredential result = await auth.createUserWithEmailAndPassword(
          email: cliente.email, password: cliente.password);

      cliente.id = result.user.uid;
      this.cliente = cliente;

      await cliente.saveData();

      cliente.saveToken();

      onSuccess();
    } on FirebaseAuthException catch (e) {
      onFail(getErrorString(e.code));
    }
    setLoading(false);
  }
}
