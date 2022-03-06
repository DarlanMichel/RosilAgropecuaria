import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/login/domain/entities/logged_user_info.dart';
import 'package:rosilagropecuaria/app/modules/login/domain/errors/errors.dart';
import 'package:rosilagropecuaria/app/modules/login/domain/repositories/login_repository.dart';

part 'get_logged_user.g.dart';

abstract class GetLoggedUser {
  Future<Either<Failure, LoggedUserInfo>> call();
}

@Injectable(singleton: false)
class GetLoggedUserImp implements GetLoggedUser {
  final LoginRepository repository;

  GetLoggedUserImp(this.repository);

  @override
  Future<Either<Failure, LoggedUserInfo>> call() async {
    return await repository.loggedUser();
  }
}
