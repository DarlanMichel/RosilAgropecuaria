import 'package:string_validator/string_validator.dart' as validator;

class RegisterCredential {
  final String? email;
  final String? password;
  final String? confirmPassword;

  RegisterCredential._({this.email, this.password, this.confirmPassword});

  bool get isValidEmail => validator.isEmail(email ?? "");
  bool get isValidPassword =>
      password != null && password!.isNotEmpty && password!.length > 3;
  bool get isValidConfirmPassword => confirmPassword == password;

  factory RegisterCredential.withEmailAndPassword(
      {required String email,
      required String password,
      required String confirmPassword}) {
    return RegisterCredential._(
        email: email, password: password, confirmPassword: confirmPassword);
  }
}
