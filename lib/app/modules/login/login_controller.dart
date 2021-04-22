import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/helpers/firebase_errors.dart';
import 'package:rosilagropecuaria/app/modules/repositories/cliente_repository.dart';
import 'package:rosilagropecuaria/app/modules/repositories/interfaces/cliente_repository_inteface.dart';

part 'login_controller.g.dart';

@Injectable()
class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  final ClienteRepository _repository;

  _LoginControllerBase(this._repository) {
    _repository.getCliente();
  }

  @observable
  FirebaseAuth auth = FirebaseAuth.instance;

  @observable
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @observable
  String email = '';

  @observable
  String senha = '';

  @action
  void setEmail(String _email) => email = _email;

  @action
  void setSenha(String _senha) => senha = _senha;

  @observable
  bool loading = false;

  @action
  void setLoading(bool _loading) => loading = _loading;

  @action
  Future<void> signIn({Function onFail, Function onSuccess}) async {
    setLoading(true);
    try {
      final User user =
          (await auth.signInWithEmailAndPassword(email: email, password: senha))
              .user;

      _repository.getCliente(firebaseUser: user);

      onSuccess();
    } on FirebaseAuthException catch (e) {
      onFail(getErrorString(e.code));
    }
    setLoading(false);
  }
}
