// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $RegisterController = BindInject(
  (i) => RegisterController(i<RegisterWithEmail>(), i<LoadingDialog>(),
      i<AuthStore>(), i<InsertUser>()),
  isSingleton: true,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterController on _RegisterControllerBase, Store {
  Computed<RegisterCredential>? _$credentialComputed;

  @override
  RegisterCredential get credential => (_$credentialComputed ??=
          Computed<RegisterCredential>(() => super.credential,
              name: '_RegisterControllerBase.credential'))
      .value;
  Computed<bool>? _$isValidComputed;

  @override
  bool get isValid => (_$isValidComputed ??= Computed<bool>(() => super.isValid,
          name: '_RegisterControllerBase.isValid'))
      .value;

  final _$emailAtom = Atom(name: '_RegisterControllerBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$passwordAtom = Atom(name: '_RegisterControllerBase.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$confirmPasswordAtom =
      Atom(name: '_RegisterControllerBase.confirmPassword');

  @override
  String get confirmPassword {
    _$confirmPasswordAtom.reportRead();
    return super.confirmPassword;
  }

  @override
  set confirmPassword(String value) {
    _$confirmPasswordAtom.reportWrite(value, super.confirmPassword, () {
      super.confirmPassword = value;
    });
  }

  final _$idAtom = Atom(name: '_RegisterControllerBase.id');

  @override
  String get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(String value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  final _$_RegisterControllerBaseActionController =
      ActionController(name: '_RegisterControllerBase');

  @override
  void setEmail(String _email) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.setEmail');
    try {
      return super.setEmail(_email);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSenha(String _password) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.setSenha');
    try {
      return super.setSenha(_password);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setConfirmaSenha(String _confirmPassword) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.setConfirmaSenha');
    try {
      return super.setConfirmaSenha(_confirmPassword);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password},
confirmPassword: ${confirmPassword},
id: ${id},
credential: ${credential},
isValid: ${isValid}
    ''';
  }
}
