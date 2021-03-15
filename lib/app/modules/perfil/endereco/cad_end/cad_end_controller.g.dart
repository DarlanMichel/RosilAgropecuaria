// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cad_end_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $CadEndController = BindInject(
  (i) => CadEndController(),
  isSingleton: true,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CadEndController on _CadEndControllerBase, Store {
  final _$valueAtom = Atom(name: '_CadEndControllerBase.value');

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

  final _$_CadEndControllerBaseActionController =
      ActionController(name: '_CadEndControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_CadEndControllerBaseActionController.startAction(
        name: '_CadEndControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_CadEndControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
