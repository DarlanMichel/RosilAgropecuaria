// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $HomeController = BindInject(
  (i) => HomeController(i<ICategoriaRepository>()),
  isSingleton: true,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$categoriaListAtom = Atom(name: '_HomeControllerBase.categoriaList');

  @override
  ObservableStream<List<CategoriaModel>> get categoriaList {
    _$categoriaListAtom.reportRead();
    return super.categoriaList;
  }

  @override
  set categoriaList(ObservableStream<List<CategoriaModel>> value) {
    _$categoriaListAtom.reportWrite(value, super.categoriaList, () {
      super.categoriaList = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic getCategoria() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.getCategoria');
    try {
      return super.getCategoria();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
categoriaList: ${categoriaList}
    ''';
  }
}
