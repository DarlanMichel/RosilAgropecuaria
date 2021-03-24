import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/helpers/firebase_errors.dart';
import 'package:rosilagropecuaria/app/modules/model/cliente.dart';

part 'login_controller.g.dart';

@Injectable()
class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  
  _LoginControllerBase() {
    _loadCurrentUser();
  }

  @observable
  FirebaseAuth auth = FirebaseAuth.instance;
  @observable
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @observable
  Cliente cliente;
  @observable
  bool loading = false;

  @action
  void setLoading(bool _loading) => loading = _loading;

  bool get isLoggedIn => cliente != null;

  @action
  Future<void> signIn({Cliente cliente, Function onFail, Function onSuccess}) async {
    setLoading(true);
    try {
      final UserCredential  result = await auth.signInWithEmailAndPassword(
          email: cliente.email, password: cliente.password);

      await _loadCurrentUser(firebaseUser: result.user);

      onSuccess();
    } on FirebaseAuthException catch (e){
      onFail(getErrorString(e.code));
    }
    setLoading(false);
  }

  @action
  Future<void> _loadCurrentUser({User firebaseUser}) async {
    final User currentUser = firebaseUser ?? auth.currentUser;
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
