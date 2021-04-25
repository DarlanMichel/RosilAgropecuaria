// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cad_end_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $CadEndController = BindInject(
  (i) => CadEndController(i<IEnderecoRepository>(), model: i.args.data),
  isSingleton: true,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CadEndController on _CadEndControllerBase, Store {
  final _$ruaAtom = Atom(name: '_CadEndControllerBase.rua');

  @override
  String get rua {
    _$ruaAtom.reportRead();
    return super.rua;
  }

  @override
  set rua(String value) {
    _$ruaAtom.reportWrite(value, super.rua, () {
      super.rua = value;
    });
  }

  final _$numeroAtom = Atom(name: '_CadEndControllerBase.numero');

  @override
  String get numero {
    _$numeroAtom.reportRead();
    return super.numero;
  }

  @override
  set numero(String value) {
    _$numeroAtom.reportWrite(value, super.numero, () {
      super.numero = value;
    });
  }

  final _$complementoAtom = Atom(name: '_CadEndControllerBase.complemento');

  @override
  String get complemento {
    _$complementoAtom.reportRead();
    return super.complemento;
  }

  @override
  set complemento(String value) {
    _$complementoAtom.reportWrite(value, super.complemento, () {
      super.complemento = value;
    });
  }

  final _$bairroAtom = Atom(name: '_CadEndControllerBase.bairro');

  @override
  String get bairro {
    _$bairroAtom.reportRead();
    return super.bairro;
  }

  @override
  set bairro(String value) {
    _$bairroAtom.reportWrite(value, super.bairro, () {
      super.bairro = value;
    });
  }

  final _$referenciaAtom = Atom(name: '_CadEndControllerBase.referencia');

  @override
  String get referencia {
    _$referenciaAtom.reportRead();
    return super.referencia;
  }

  @override
  set referencia(String value) {
    _$referenciaAtom.reportWrite(value, super.referencia, () {
      super.referencia = value;
    });
  }

  final _$cidadeAtom = Atom(name: '_CadEndControllerBase.cidade');

  @override
  String get cidade {
    _$cidadeAtom.reportRead();
    return super.cidade;
  }

  @override
  set cidade(String value) {
    _$cidadeAtom.reportWrite(value, super.cidade, () {
      super.cidade = value;
    });
  }

  final _$ufAtom = Atom(name: '_CadEndControllerBase.uf');

  @override
  String get uf {
    _$ufAtom.reportRead();
    return super.uf;
  }

  @override
  set uf(String value) {
    _$ufAtom.reportWrite(value, super.uf, () {
      super.uf = value;
    });
  }

  final _$descricaoAtom = Atom(name: '_CadEndControllerBase.descricao');

  @override
  String get descricao {
    _$descricaoAtom.reportRead();
    return super.descricao;
  }

  @override
  set descricao(String value) {
    _$descricaoAtom.reportWrite(value, super.descricao, () {
      super.descricao = value;
    });
  }

  final _$cepAtom = Atom(name: '_CadEndControllerBase.cep');

  @override
  String get cep {
    _$cepAtom.reportRead();
    return super.cep;
  }

  @override
  set cep(String value) {
    _$cepAtom.reportWrite(value, super.cep, () {
      super.cep = value;
    });
  }

  final _$setCepAsyncAction = AsyncAction('_CadEndControllerBase.setCep');

  @override
  Future<dynamic> setCep(String _cep) {
    return _$setCepAsyncAction.run(() => super.setCep(_cep));
  }

  final _$_CadEndControllerBaseActionController =
      ActionController(name: '_CadEndControllerBase');

  @override
  void setRua(String _rua) {
    final _$actionInfo = _$_CadEndControllerBaseActionController.startAction(
        name: '_CadEndControllerBase.setRua');
    try {
      return super.setRua(_rua);
    } finally {
      _$_CadEndControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setNum(String _num) {
    final _$actionInfo = _$_CadEndControllerBaseActionController.startAction(
        name: '_CadEndControllerBase.setNum');
    try {
      return super.setNum(_num);
    } finally {
      _$_CadEndControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setComplemento(String _complemento) {
    final _$actionInfo = _$_CadEndControllerBaseActionController.startAction(
        name: '_CadEndControllerBase.setComplemento');
    try {
      return super.setComplemento(_complemento);
    } finally {
      _$_CadEndControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setBairro(String _bairro) {
    final _$actionInfo = _$_CadEndControllerBaseActionController.startAction(
        name: '_CadEndControllerBase.setBairro');
    try {
      return super.setBairro(_bairro);
    } finally {
      _$_CadEndControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setReferencia(String _referencia) {
    final _$actionInfo = _$_CadEndControllerBaseActionController.startAction(
        name: '_CadEndControllerBase.setReferencia');
    try {
      return super.setReferencia(_referencia);
    } finally {
      _$_CadEndControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCidade(String _cidade) {
    final _$actionInfo = _$_CadEndControllerBaseActionController.startAction(
        name: '_CadEndControllerBase.setCidade');
    try {
      return super.setCidade(_cidade);
    } finally {
      _$_CadEndControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUF(String _uf) {
    final _$actionInfo = _$_CadEndControllerBaseActionController.startAction(
        name: '_CadEndControllerBase.setUF');
    try {
      return super.setUF(_uf);
    } finally {
      _$_CadEndControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDescricao(String _descricao) {
    final _$actionInfo = _$_CadEndControllerBaseActionController.startAction(
        name: '_CadEndControllerBase.setDescricao');
    try {
      return super.setDescricao(_descricao);
    } finally {
      _$_CadEndControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  Future<dynamic> insertEndereco(
      String bairro,
      String cep,
      String cidade,
      String complemento,
      String descricao,
      String uf,
      String numero,
      String referencia,
      String rua) {
    final _$actionInfo = _$_CadEndControllerBaseActionController.startAction(
        name: '_CadEndControllerBase.insertEndereco');
    try {
      return super.insertEndereco(bairro, cep, cidade, complemento, descricao,
          uf, numero, referencia, rua);
    } finally {
      _$_CadEndControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  Future<dynamic> updateEndereco(EnderecoModel model) {
    final _$actionInfo = _$_CadEndControllerBaseActionController.startAction(
        name: '_CadEndControllerBase.updateEndereco');
    try {
      return super.updateEndereco(model);
    } finally {
      _$_CadEndControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
rua: ${rua},
numero: ${numero},
complemento: ${complemento},
bairro: ${bairro},
referencia: ${referencia},
cidade: ${cidade},
uf: ${uf},
descricao: ${descricao},
cep: ${cep}
    ''';
  }
}
