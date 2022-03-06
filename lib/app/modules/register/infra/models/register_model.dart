import 'package:rosilagropecuaria/app/modules/login/domain/entities/logged_user_info.dart';
import 'package:rosilagropecuaria/app/modules/register/domain/entities/register_entity.dart';

class RegisterModel extends RegisterEntity implements LoggedUserInfo{
  RegisterModel({required String email, String? id}) : super(email: email, id: id);

  @override
  String? get name => null;

  RegisterEntity toRegisterEntity() => this;
}
