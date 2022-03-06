import 'package:flutter_test/flutter_test.dart';
import 'package:rosilagropecuaria/app/modules/login/domain/entities/login_credential.dart';

main() {
  group("should check if field is valid or not", () {
    test('email and password', () {
      expect(
        LoginCredential.withEmailAndPassword(email: "", password: "")
            .isValidEmail,
        false,
      );
      expect(
        LoginCredential.withEmailAndPassword(email: "jacob", password: "")
            .isValidEmail,
        false,
      );
      expect(
        LoginCredential.withEmailAndPassword(
                email: "jacob@flutterrando.com.br", password: "")
            .isValidEmail,
        true,
      );
    });
  });
}
