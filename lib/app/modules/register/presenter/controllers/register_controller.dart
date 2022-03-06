import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/core/stores/auth_store.dart';
import 'package:rosilagropecuaria/app/modules/login/presenter/utils/loading_dialog.dart';
import 'package:rosilagropecuaria/app/modules/register/domain/entities/register_credential.dart';
import 'package:rosilagropecuaria/app/modules/register/domain/usecases/insert_user.dart';
import 'package:rosilagropecuaria/app/modules/register/domain/usecases/register_with_email.dart';
import 'package:asuka/asuka.dart' as asuka;

part 'register_controller.g.dart';

@Injectable()
class RegisterController = _RegisterControllerBase with _$RegisterController;

abstract class _RegisterControllerBase with Store {
  final RegisterWithEmail registerWithEmailUsecase;
  final InsertUser insertUserUsecase;
  final LoadingDialog loading;
  final AuthStore authStore;

  _RegisterControllerBase(this.registerWithEmailUsecase, this.loading, this.authStore, this.insertUserUsecase);

  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  String confirmPassword = '';

  @action
  void setEmail(String _email) => email = _email;

  @action
  void setSenha(String _password) => password = _password;

  @action
  void setConfirmaSenha(String _confirmPassword) =>
      confirmPassword= _confirmPassword;

  @computed
  RegisterCredential get credential => RegisterCredential.withEmailAndPassword(email: email, password: password, confirmPassword: confirmPassword);

  @computed
  bool get isValid => credential.isValidEmail && credential.isValidPassword && credential.isValidConfirmPassword;

  @observable
  String id = '';

  enterRegister() async {
    loading.show();
    await Future.delayed(Duration(seconds: 1));
    var result = await registerWithEmailUsecase(credential);
    result.fold((failure) {
      asuka.showSnackBar(SnackBar(content: Text(failure.message)));
    }, (user) async{
      await insertUserUsecase(email: email, id: user.id!);
      await loading.hide();
      authStore.setUser(user);
      Modular.to.pushReplacementNamed('/home/');
    });
  }
}
