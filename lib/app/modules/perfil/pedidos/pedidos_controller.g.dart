// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedidos_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $PedidosController = BindInject(
  (i) => PedidosController(),
  isSingleton: true,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PedidosController on _PedidosControllerBase, Store {
  final _$valueAtom = Atom(name: '_PedidosControllerBase.value');

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

  final _$_PedidosControllerBaseActionController =
      ActionController(name: '_PedidosControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_PedidosControllerBaseActionController.startAction(
        name: '_PedidosControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_PedidosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
