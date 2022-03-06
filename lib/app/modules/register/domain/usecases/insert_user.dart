import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/login/domain/errors/errors.dart';
import 'package:rosilagropecuaria/app/modules/register/domain/entities/register_entity.dart';
import 'package:rosilagropecuaria/app/modules/register/domain/repositories/register_repository.dart';

part 'insert_user.g.dart';

abstract class InsertUser {
  Future<Either<Failure, RegisterEntity>> call({required String id, required String email});
}

@Injectable(singleton: false)
class InsertUserImp implements InsertUser {
  final RegisterRepository repository;

  InsertUserImp(this.repository);

  @override
  Future<Either<Failure, RegisterEntity>> call(
      {required String id, required String email}) async {

    return await repository.insertUser(
      email: email,
      id: id,
    );
  }
}