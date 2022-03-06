import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/login/presenter/utils/loading_dialog.dart';
import 'package:rosilagropecuaria/app/modules/register/domain/usecases/insert_user.dart';
import 'package:rosilagropecuaria/app/modules/register/domain/usecases/register_with_email.dart';
import 'package:rosilagropecuaria/app/modules/register/external/datasource/register_firebase_datasource_imp.dart';
import 'package:rosilagropecuaria/app/modules/register/infra/repositories/register_repository_imp.dart';
import 'package:rosilagropecuaria/app/modules/register/presenter/controllers/register_controller.dart';
import 'package:rosilagropecuaria/app/modules/register/presenter/pages/register_page.dart';

class RegisterModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => FirebaseAuth.instance),
    Bind.singleton((i) => FirebaseFirestore.instance),
    //datasource
    Bind.singleton((i) => RegisterFirebaseDataSourceImp(i(), i()), export: true),
    //repositories
    Bind.singleton((i) => RegisterRepositoryImp(i()), export: true),
    //usecases
    Bind.singleton((i) => RegisterWithEmailImp(i()), export: true),
    Bind.singleton((i) => InsertUserImp(i()), export: true),
    //controllers
    Bind.singleton((i) => RegisterController(i(), i(), i(), i()), export: true),
    //utils
    Bind.singleton((i) => LoadingDialogImp(), export: true),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => RegisterPage()),
  ];
}
