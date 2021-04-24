// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cadastro_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $CadastroController = BindInject(
  (i) => CadastroController(i<ClienteRepository>()),
  isSingleton: true,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CadastroController on _CadastroControllerBase, Store {
  final _$emailAtom = Atom(name: '_CadastroControllerBase.email');

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

  final _$senhaAtom = Atom(name: '_CadastroControllerBase.senha');

  @override
  String get senha {
    _$senhaAtom.reportRead();
    return super.senha;
  }

  @override
  set senha(String value) {
    _$senhaAtom.reportWrite(value, super.senha, () {
      super.senha = value;
    });
  }

  final _$confirmaSenhaAtom =
      Atom(name: '_CadastroControllerBase.confirmaSenha');

  @override
  String get confirmaSenha {
    _$confirmaSenhaAtom.reportRead();
    return super.confirmaSenha;
  }

  @override
  set confirmaSenha(String value) {
    _$confirmaSenhaAtom.reportWrite(value, super.confirmaSenha, () {
      super.confirmaSenha = value;
    });
  }

  final _$loadingAtom = Atom(name: '_CadastroControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$idAtom = Atom(name: '_CadastroControllerBase.id');

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

  final _$signUpAsyncAction = AsyncAction('_CadastroControllerBase.signUp');

  @override
  Future<void> signUp({Function onFail, Function onSuccess}) {
    return _$signUpAsyncAction
        .run(() => super.signUp(onFail: onFail, onSuccess: onSuccess));
  }

  final _$_CadastroControllerBaseActionController =
      ActionController(name: '_CadastroControllerBase');

  @override
  void setEmail(String _email) {
    final _$actionInfo = _$_CadastroControllerBaseActionController.startAction(
        name: '_CadastroControllerBase.setEmail');
    try {
      return super.setEmail(_email);
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSenha(String _senha) {
    final _$actionInfo = _$_CadastroControllerBaseActionController.startAction(
        name: '_CadastroControllerBase.setSenha');
    try {
      return super.setSenha(_senha);
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setConfirmaSenha(String _confirmaSenha) {
    final _$actionInfo = _$_CadastroControllerBaseActionController.startAction(
        name: '_CadastroControllerBase.setConfirmaSenha');
    try {
      return super.setConfirmaSenha(_confirmaSenha);
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLoading(bool _loading) {
    final _$actionInfo = _$_CadastroControllerBaseActionController.startAction(
        name: '_CadastroControllerBase.setLoading');
    try {
      return super.setLoading(_loading);
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
senha: ${senha},
confirmaSenha: ${confirmaSenha},
loading: ${loading},
id: ${id}
    ''';
  }
}
