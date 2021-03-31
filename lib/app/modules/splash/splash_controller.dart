import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';

part 'splash_controller.g.dart';

class SplashController = _SplashBase with _$SplashController;

abstract class _SplashBase with Store {
  final FirebaseAuth firebaseAuth;

  _SplashBase(this.firebaseAuth);

  @action
  bool checkLogin() {
    var user = firebaseAuth.currentUser;
    if (user != null) {
      return true;
    } else {
      return false;
    }
  }
}
