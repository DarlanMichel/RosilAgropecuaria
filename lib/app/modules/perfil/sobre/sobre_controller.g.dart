// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sobre_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $SobreController = BindInject(
  (i) => SobreController(),
  isSingleton: true,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SobreController on _SobreControllerBase, Store {
  final _$valueAtom = Atom(name: '_SobreControllerBase.value');

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

  final _$_SobreControllerBaseActionController =
      ActionController(name: '_SobreControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_SobreControllerBaseActionController.startAction(
        name: '_SobreControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_SobreControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
