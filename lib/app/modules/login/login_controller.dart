import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/helpers/firebase_errors.dart';
import 'package:rosilagropecuaria/app/modules/model/user.dart';

part 'login_controller.g.dart';

@Injectable()
class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  @action
  UserManager() {
  _loadCurrentUser();
  }

  @observable
  FirebaseAuth auth = FirebaseAuth.instance;
  @observable
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @observable
  Cliente cliente;
  @observable
  bool _loading = false;

  bool get loading => _loading;

  set loading(bool value) {
    _loading = value;
  }

  bool get isLoggedIn => cliente != null;

  @action
  Future<void> signIn({User user, Function onFail, Function onSuccess}) async {
    loading = true;
    try {
      final UserCredential  result = await auth.signInWithEmailAndPassword(
          email: cliente.email, password: cliente.password);

      await _loadCurrentUser(firebaseUser: result.user);

      onSuccess();
    } on FirebaseAuthException catch (e){
      onFail(getErrorString(e.code));
    }
    loading = false;
  }

  @action
  Future<void> _loadCurrentUser({User firebaseUser}) async {
    final User currentUser = firebaseUser ?? await auth.currentUser;
    if(currentUser != null){
      final DocumentSnapshot docUser = await firestore.collection('users')
          .doc(currentUser.uid).get();
      cliente = Cliente.fromDocument(docUser);

      cliente.saveToken();

      final docAdmin = await firestore.collection('admins').doc(cliente.id).get();
      if(docAdmin.exists){
        cliente.admin = true;
      }
    }
  }

  bool get adminEnabled => cliente != null && cliente.admin;
}
