// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produtos_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $ProdutosController = BindInject(
  (i) => ProdutosController(i<IProdutosRepository>()),
  isSingleton: true,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProdutosController on _ProdutosControllerBase, Store {
  final _$prodListAtom = Atom(name: '_ProdutosControllerBase.prodList');

  @override
  ObservableStream<List<ProdutoModel>> get prodList {
    _$prodListAtom.reportRead();
    return super.prodList;
  }

  @override
  set prodList(ObservableStream<List<ProdutoModel>> value) {
    _$prodListAtom.reportWrite(value, super.prodList, () {
      super.prodList = value;
    });
  }

  final _$_ProdutosControllerBaseActionController =
      ActionController(name: '_ProdutosControllerBase');

  @override
  dynamic getProduto() {
    final _$actionInfo = _$_ProdutosControllerBaseActionController.startAction(
        name: '_ProdutosControllerBase.getProduto');
    try {
      return super.getProduto();
    } finally {
      _$_ProdutosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
prodList: ${prodList}
    ''';
  }
}
