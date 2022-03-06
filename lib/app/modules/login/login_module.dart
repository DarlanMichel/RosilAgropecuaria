import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/login/domain/usecases/get_logged_user.dart';
import 'package:rosilagropecuaria/app/modules/login/domain/usecases/login_with_email.dart';
import 'package:rosilagropecuaria/app/modules/login/domain/usecases/logout.dart';
import 'package:rosilagropecuaria/app/modules/login/external/datasources/login_firebase_datasource_imp.dart';
import 'package:rosilagropecuaria/app/modules/login/external/drivers/connectivity_driver_imp.dart';
import 'package:rosilagropecuaria/app/modules/login/infra/repositories/login_repository_imp.dart';
import 'package:rosilagropecuaria/app/modules/login/infra/services/connectivity_service_imp.dart';
import 'package:rosilagropecuaria/app/modules/login/presenter/controllers/login_controller.dart';
import 'package:rosilagropecuaria/app/modules/login/presenter/pages/login_page.dart';
import 'package:rosilagropecuaria/app/modules/login/presenter/utils/loading_dialog.dart';

class LoginModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => FirebaseAuth.instance),
    Bind.singleton((i) => Connectivity(), export: true),
    //datasource
    Bind.singleton((i) => FirebaseDataSourceImp(i()), export: true),
    //repositories
    Bind.singleton((i) => LoginRepositoryImp(i()), export: true),
    //usecases
    Bind.singleton((i) => GetLoggedUserImp(i()), export: true),
    Bind.singleton((i) => LoginWithEmailImp(i(), i()), export: true),
    Bind.singleton((i) => LogoutImp(i()), export: true),
    //services
    Bind.singleton((i) => ConnectivityServiceImp(i()), export: true),
    //drives
    Bind.singleton((i) => ConnectivityDriverImp(i()), export: true),
    //controllers
    Bind.singleton((i) => LoginController(i(), i(), i()), export: true),
    //utils
    Bind.singleton((i) => LoadingDialogImp(), export: true),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => LoginPage()),
  ];
}
