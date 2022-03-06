import 'package:dartz/dartz.dart';
import 'package:rosilagropecuaria/app/modules/login/domain/errors/errors.dart';

abstract class ConnectivityService {
  Future<Either<Failure, Unit>> isOnline();
}
