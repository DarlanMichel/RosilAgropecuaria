import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/login/domain/entities/logged_user_info.dart';
import 'package:rosilagropecuaria/app/modules/login/domain/errors/errors.dart';
import 'package:rosilagropecuaria/app/modules/register/domain/entities/register_entity.dart';
import 'package:rosilagropecuaria/app/modules/register/domain/repositories/register_repository.dart';
import 'package:rosilagropecuaria/app/modules/register/infra/datasource/register_datasource.dart';

part 'register_repository_imp.g.dart';

@Injectable(singleton: false)
class RegisterRepositoryImp implements RegisterRepository {
  final RegisterDataSource dataSource;

  RegisterRepositoryImp(this.dataSource);

  @override
  Future<Either<Failure, LoggedUserInfo>> registerWithEmail(
      {String? email, String? password}) async {
    try {
      var user = await dataSource.registerWithEmail(
          email: email!, password: password!);
      return Right(user);
    } catch (e) {
      return Left(ErrorLoginEmail(message: "Erro ao cadastrar"));
    }
  }

  @override
  Future<Either<Failure, RegisterEntity>> insertUser(
      {required String id, required String email}) async {
    try {
      var user = await dataSource.insertUser(
        email: email,
        id: id,
      );
      return Right(user);
    } catch (e) {
      return Left(ErrorLoginEmail(message: "Erro ao inserir usuario"));
    }
  }
}
