import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/login/domain/errors/errors.dart';
import 'package:rosilagropecuaria/app/modules/login/domain/services/connectivity_service.dart';
import 'package:rosilagropecuaria/app/modules/login/infra/drivers/connectivity_driver.dart';

part 'connectivity_service_imp.g.dart';

@Injectable(singleton: false)
class ConnectivityServiceImp implements ConnectivityService {
  final ConnectivityDriver driver;

  ConnectivityServiceImp(this.driver);

  @override
  Future<Either<Failure, Unit>> isOnline() async {
    try {
      var check = await driver.isOnline;
      if (check) {
        return Right(unit);
      }
      throw ConnectionError(message: "Você está offline");
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(ConnectionError(
        message: "Erro ao recuperar informação de conexão",
      ));
    }
  }
}
