import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/login/domain/entities/logged_user_info.dart';
import 'package:rosilagropecuaria/app/modules/login/domain/errors/errors.dart';
import 'package:rosilagropecuaria/app/modules/register/domain/entities/register_credential.dart';
import 'package:rosilagropecuaria/app/modules/register/domain/repositories/register_repository.dart';

part 'register_with_email.g.dart';

abstract class RegisterWithEmail {
  Future<Either<Failure, LoggedUserInfo>> call(RegisterCredential credential);
}

@Injectable(singleton: false)
class RegisterWithEmailImp implements RegisterWithEmail {
  final RegisterRepository repository;

  RegisterWithEmailImp(this.repository);

  @override
  Future<Either<Failure, LoggedUserInfo>> call(
      RegisterCredential credential) async {
    if (!credential.isValidEmail) {
      return Left(ErrorLoginEmail(message: 'Email inválido'));
    } else if (!credential.isValidPassword) {
      return Left(ErrorLoginEmail(message: "Senha inválida"));
    } else if (!credential.isValidConfirmPassword) {
      return Left(ErrorLoginEmail(message: "Senha de confirmação inválida"));
    }

    return await repository.registerWithEmail(
      email: credential.email!,
      password: credential.password!,
    );
  }
}
