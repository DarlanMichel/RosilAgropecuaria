import 'package:rosilagropecuaria/app/modules/login/infra/models/user_model.dart';

abstract class LoginDataSource {
  Future<UserModel> loginEmail({String email, String password});

  Future<UserModel> currentUser();

  Future<void> logout();
}
