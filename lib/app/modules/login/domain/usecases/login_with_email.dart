import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/login/domain/entities/logged_user_info.dart';
import 'package:rosilagropecuaria/app/modules/login/domain/entities/login_credential.dart';
import 'package:rosilagropecuaria/app/modules/login/domain/errors/errors.dart';
import 'package:rosilagropecuaria/app/modules/login/domain/repositories/login_repository.dart';
import 'package:rosilagropecuaria/app/modules/login/domain/services/connectivity_service.dart';

part 'login_with_email.g.dart';

abstract class LoginWithEmail {
  Future<Either<Failure, LoggedUserInfo?>> call(LoginCredential credential);
}

@Injectable(singleton: false)
class LoginWithEmailImp implements LoginWithEmail {
  final LoginRepository repository;
  final ConnectivityService service;

  LoginWithEmailImp(this.repository, this.service);

  @override
  Future<Either<Failure, LoggedUserInfo?>> call(
      LoginCredential credential) async {
    var result = await service.isOnline();

    if (result.isLeft()) {
      return result.map((r) => null);
    }

    if (!credential.isValidEmail) {
      return Left(ErrorLoginEmail(message: "Email inválido"));
    } else if (!credential.isValidPassword) {
      return Left(ErrorLoginEmail(message: "Senha inválida"));
    }

    return await repository.loginEmail(
      email: credential.email!,
      password: credential.password!,
    );
  }
}
