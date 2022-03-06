import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rosilagropecuaria/app/modules/login/domain/entities/logged_user_info.dart';
import 'package:rosilagropecuaria/app/modules/login/domain/errors/errors.dart';
import 'package:rosilagropecuaria/app/modules/login/domain/repositories/login_repository.dart';
import 'package:rosilagropecuaria/app/modules/login/domain/usecases/get_logged_user.dart';
import 'package:rosilagropecuaria/app/modules/login/infra/models/user_model.dart';

class LoginRepositoryMock extends Mock implements LoginRepository {}

class FirebaseAuthMock extends Mock implements FirebaseAuth {}

main() {
  final repository = LoginRepositoryMock();
  final usecase = GetLoggedUserImp(repository);
  test('should verify if exist User Logged', () async {
    when(repository.loggedUser()).thenAnswer(
            (_) async => Right(UserModel(name: "", email: "")));
    var result = (await usecase()).fold((l) => null, (r) => r);
    expect(result, isA<LoggedUserInfo>());
  });
  test('should return null if user not logged', () async {
    when(repository.loggedUser())
        .thenAnswer((_) async => Left(ErrorGetLoggedUser(message: 'Error')));

    var result = (await usecase()).fold((l) => null, (r) => r);
    expect(result, null);
  });
}