import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/helpers/firebase_errors.dart';
import 'package:rosilagropecuaria/app/modules/repositories/cliente_repository.dart';

part 'cadastro_controller.g.dart';

@Injectable()
class CadastroController = _CadastroControllerBase with _$CadastroController;

abstract class _CadastroControllerBase with Store {
  final ClienteRepository _repository;

  _CadastroControllerBase(this._repository);

  @observable
  String email = '';

  @observable
  String senha = '';

  @observable
  String confirmaSenha = '';

  @action
  void setEmail(String _email) => email = _email;

  @action
  void setSenha(String _senha) => senha = _senha;

  @action
  void setConfirmaSenha(String _confirmaSenha) =>
      confirmaSenha = _confirmaSenha;

  @observable
  bool loading = false;

  @action
  void setLoading(bool _loading) => loading = _loading;

  @observable
  String id = '';

  @action
  Future<void> signUp({Function? onFail, Function? onSuccess}) async {
    setLoading(true);
    try {
      final FirebaseAuth _auth = FirebaseAuth.instance;

      final User? user = (await _auth.createUserWithEmailAndPassword(
              email: email, password: senha))
          .user;

      id = user!.uid;

      await _repository.insertClient(id, email);

      onSuccess!();
    } on FirebaseAuthException catch (e) {
      onFail!(getErrorString(e.code));
    }
    setLoading(false);
  }
}
