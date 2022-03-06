import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/login/domain/errors/errors.dart';
import 'package:rosilagropecuaria/app/modules/login/domain/repositories/login_repository.dart';

part 'logout.g.dart';

abstract class Logout {
  Future<Either<Failure, Unit>> call();
}

@Injectable(singleton: false)
class LogoutImp implements Logout {
  final LoginRepository repository;

  LogoutImp(this.repository);

  @override
  Future<Either<Failure, Unit>> call() async {
    return await repository.logout();
  }
}
