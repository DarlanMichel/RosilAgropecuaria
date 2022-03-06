import 'package:dartz/dartz.dart';
import 'package:rosilagropecuaria/app/modules/login/domain/entities/logged_user_info.dart';
import 'package:rosilagropecuaria/app/modules/login/domain/errors/errors.dart';
import 'package:rosilagropecuaria/app/modules/register/domain/entities/register_entity.dart';

abstract class RegisterRepository {
  Future<Either<Failure, LoggedUserInfo>> registerWithEmail(
      {String email, String password});

  Future<Either<Failure, RegisterEntity>> insertUser({required String id, required String email});
}
