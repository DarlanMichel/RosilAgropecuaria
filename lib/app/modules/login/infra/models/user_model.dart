import 'package:rosilagropecuaria/app/modules/login/domain/entities/logged_user.dart';
import 'package:rosilagropecuaria/app/modules/login/domain/entities/logged_user_info.dart';

class UserModel extends LoggedUser implements LoggedUserInfo {
  UserModel({String? name, required String email})
      : super(name: name, email: email);

  LoggedUser toLoggedUser() => this;

  @override
  String? get id => null;
}
