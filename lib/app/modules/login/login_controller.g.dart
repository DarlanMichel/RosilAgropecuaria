// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $LoginController = BindInject(
  (i) => LoginController(),
  isSingleton: true,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on _LoginControllerBase, Store {
  final _$authAtom = Atom(name: '_LoginControllerBase.auth');

  @override
  FirebaseAuth get auth {
    _$authAtom.reportRead();
    return super.auth;
  }

  @override
  set auth(FirebaseAuth value) {
    _$authAtom.reportWrite(value, super.auth, () {
      super.auth = value;
    });
  }

  final _$firestoreAtom = Atom(name: '_LoginControllerBase.firestore');

  @override
  FirebaseFirestore get firestore {
    _$firestoreAtom.reportRead();
    return super.firestore;
  }

  @override
  set firestore(FirebaseFirestore value) {
    _$firestoreAtom.reportWrite(value, super.firestore, () {
      super.firestore = value;
    });
  }

  final _$clienteAtom = Atom(name: '_LoginControllerBase.cliente');

  @override
  Cliente get cliente {
    _$clienteAtom.reportRead();
    return super.cliente;
  }

  @override
  set cliente(Cliente value) {
    _$clienteAtom.reportWrite(value, super.cliente, () {
      super.cliente = value;
    });
  }

  final _$loadingAtom = Atom(name: '_LoginControllerBase.loading');

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

  final _$signInAsyncAction = AsyncAction('_LoginControllerBase.signIn');

  @override
  Future<void> signIn({Cliente cliente, Function onFail, Function onSuccess}) {
    return _$signInAsyncAction.run(() =>
        super.signIn(cliente: cliente, onFail: onFail, onSuccess: onSuccess));
  }

  final _$_loadCurrentUserAsyncAction =
      AsyncAction('_LoginControllerBase._loadCurrentUser');

  @override
  Future<void> _loadCurrentUser({User firebaseUser}) {
    return _$_loadCurrentUserAsyncAction
        .run(() => super._loadCurrentUser(firebaseUser: firebaseUser));
  }

  final _$_LoginControllerBaseActionController =
      ActionController(name: '_LoginControllerBase');

  @override
  void setLoading(bool _loading) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.setLoading');
    try {
      return super.setLoading(_loading);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
auth: ${auth},
firestore: ${firestore},
cliente: ${cliente},
loading: ${loading}
    ''';
  }
}
