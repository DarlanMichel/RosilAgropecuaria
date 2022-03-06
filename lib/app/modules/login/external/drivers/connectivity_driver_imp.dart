import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/login/infra/drivers/connectivity_driver.dart';

part 'connectivity_driver_imp.g.dart';

@Injectable(singleton: false)
class ConnectivityDriverImp implements ConnectivityDriver {
  final Connectivity connectivity;

  ConnectivityDriverImp(this.connectivity);

  @override
  Future<bool> get isOnline async {
    var result = await connectivity.checkConnectivity();
    return result == ConnectivityResult.wifi ||
        result == ConnectivityResult.mobile;
  }
}
