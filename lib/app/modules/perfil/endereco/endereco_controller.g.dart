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
  List<EnderecoModel> get listEnd {
    _$listEndAtom.reportRead();
    return super.listEnd;
  }

  @override
  set listEnd(List<EnderecoModel> value) {
    _$listEndAtom.reportWrite(value, super.listEnd, () {
      super.listEnd = value;
    });
  }

  final _$getEnderecoAsyncAction =
      AsyncAction('_EnderecoControllerBase.getEndereco');

  @override
  Future getEndereco() {
    return _$getEnderecoAsyncAction.run(() => super.getEndereco());
  }

  @override
  String toString() {
    return '''
listEnd: ${listEnd}
    ''';
  }
}
