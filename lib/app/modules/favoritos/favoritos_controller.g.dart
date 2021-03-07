// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favoritos_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $FavoritosController = BindInject(
  (i) => FavoritosController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FavoritosController on _FavoritosControllerBase, Store {
  final _$valueAtom = Atom(name: '_FavoritosControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_FavoritosControllerBaseActionController =
      ActionController(name: '_FavoritosControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_FavoritosControllerBaseActionController.startAction(
        name: '_FavoritosControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_FavoritosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
