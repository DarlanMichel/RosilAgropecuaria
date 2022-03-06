import 'package:rosilagropecuaria/app/modules/register/infra/models/register_model.dart';

abstract class RegisterDataSource {
  Future<RegisterModel> registerWithEmail({String email, String password});
  Future<RegisterModel> insertUser({required String email, required String id});
}
