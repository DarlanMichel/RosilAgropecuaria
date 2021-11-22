// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produtos_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $ProdutosController = BindInject(
  (i) => ProdutosController(
      repository: i<IProdutosRepository>(), categoria: i.args.data),
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
  List<ProdutoModel>? get prodList {
    _$prodListAtom.reportRead();
    return super.prodList;
  }

  @override
  set prodList(List<ProdutoModel>? value) {
    _$prodListAtom.reportWrite(value, super.prodList, () {
      super.prodList = value;
    });
  }

  final _$pesquisaAtom = Atom(name: '_ProdutosControllerBase.pesquisa');

  @override
  String get pesquisa {
    _$pesquisaAtom.reportRead();
    return super.pesquisa;
  }

  @override
  set pesquisa(String value) {
    _$pesquisaAtom.reportWrite(value, super.pesquisa, () {
      super.pesquisa = value;
    });
  }

  final _$getProdutoAsyncAction =
      AsyncAction('_ProdutosControllerBase.getProduto');

  @override
  Future getProduto() {
    return _$getProdutoAsyncAction.run(() => super.getProduto());
  }

  final _$_ProdutosControllerBaseActionController =
      ActionController(name: '_ProdutosControllerBase');

  @override
  void setPesquisa(String _pesquisa) {
    final _$actionInfo = _$_ProdutosControllerBaseActionController.startAction(
        name: '_ProdutosControllerBase.setPesquisa');
    try {
      return super.setPesquisa(_pesquisa);
    } finally {
      _$_ProdutosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
prodList: ${prodList},
pesquisa: ${pesquisa}
    ''';
  }
}
