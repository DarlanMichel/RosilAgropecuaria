import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/login/domain/errors/errors.dart';
import 'package:rosilagropecuaria/app/modules/login/infra/datasources/login_datasource.dart';
import 'package:rosilagropecuaria/app/modules/login/infra/models/user_model.dart';

part 'login_firebase_datasource_imp.g.dart';

@Injectable(singleton: false)
class FirebaseDataSourceImp implements LoginDataSource {
  final FirebaseAuth auth;

  FirebaseDataSourceImp(this.auth);

  @override
  Future<UserModel> loginEmail({String? email, String? password}) async {
    var result = await auth.signInWithEmailAndPassword(
        email: email!, password: password!);
    var user = result.user;
    return UserModel(
      name: user?.displayName,
      email: user!.email!,
    );
  }

  @override
  Future<UserModel> currentUser() async {
    var user = auth.currentUser;

    if (user == null)
      throw ErrorGetLoggedUser(message: 'Erro ao pegar usuario');

    return UserModel(
      name: user.displayName,
      email: user.email!,
    );
  }

  @override
  Future<void> logout() async {
    return await auth.signOut();
  }
}
