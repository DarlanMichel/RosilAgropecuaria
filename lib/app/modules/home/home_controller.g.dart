// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $HomeController = BindInject(
  (i) => HomeController(i<ICategoriaRepository>(), i<IProdutosRepository>()),
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
  List<CategoriaModel> get categoriaList {
    _$categoriaListAtom.reportRead();
    return super.categoriaList;
  }

  @override
  set categoriaList(List<CategoriaModel> value) {
    _$categoriaListAtom.reportWrite(value, super.categoriaList, () {
      super.categoriaList = value;
    });
  }

  final _$produtoListAtom = Atom(name: '_HomeControllerBase.produtoList');

  @override
  List<ProdutoModel> get produtoList {
    _$produtoListAtom.reportRead();
    return super.produtoList;
  }

  @override
  set produtoList(List<ProdutoModel> value) {
    _$produtoListAtom.reportWrite(value, super.produtoList, () {
      super.produtoList = value;
    });
  }

  final _$getCategoriaAsyncAction =
      AsyncAction('_HomeControllerBase.getCategoria');

  @override
  Future getCategoria() {
    return _$getCategoriaAsyncAction.run(() => super.getCategoria());
  }

  final _$getProdutoAsyncAction = AsyncAction('_HomeControllerBase.getProduto');

  @override
  Future getProduto() {
    return _$getProdutoAsyncAction.run(() => super.getProduto());
  }

  @override
  String toString() {
    return '''
categoriaList: ${categoriaList},
produtoList: ${produtoList}
    ''';
  }
}
