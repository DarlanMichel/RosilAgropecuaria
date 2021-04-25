// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'endereco_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $EnderecoController = BindInject(
  (i) => EnderecoController(i<IEnderecoRepository>()),
  isSingleton: true,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EnderecoController on _EnderecoControllerBase, Store {
  final _$listEndAtom = Atom(name: '_EnderecoControllerBase.listEnd');

  @override
  ObservableStream<List<EnderecoModel>> get listEnd {
    _$listEndAtom.reportRead();
    return super.listEnd;
  }

  @override
  set listEnd(ObservableStream<List<EnderecoModel>> value) {
    _$listEndAtom.reportWrite(value, super.listEnd, () {
      super.listEnd = value;
    });
  }

  final _$modelAtom = Atom(name: '_EnderecoControllerBase.model');

  @override
  EnderecoModel get model {
    _$modelAtom.reportRead();
    return super.model;
  }

  @override
  set model(EnderecoModel value) {
    _$modelAtom.reportWrite(value, super.model, () {
      super.model = value;
    });
  }

  final _$deleteEnderecoAsyncAction =
      AsyncAction('_EnderecoControllerBase.deleteEndereco');

  @override
  Future deleteEndereco(String idEnd) {
    return _$deleteEnderecoAsyncAction.run(() => super.deleteEndereco(idEnd));
  }

  final _$selecOptionAsyncAction =
      AsyncAction('_EnderecoControllerBase.selecOption');

  @override
  Future selecOption(String _op) {
    return _$selecOptionAsyncAction.run(() => super.selecOption(_op));
  }

  final _$_EnderecoControllerBaseActionController =
      ActionController(name: '_EnderecoControllerBase');

  @override
  dynamic getEndereco() {
    final _$actionInfo = _$_EnderecoControllerBaseActionController.startAction(
        name: '_EnderecoControllerBase.getEndereco');
    try {
      return super.getEndereco();
    } finally {
      _$_EnderecoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listEnd: ${listEnd},
model: ${model}
    ''';
  }
}
