import 'package:cloud_firestore/cloud_firestore.dart';

class EnderecoModel {
  String id;
  String descricao;
  String cep;
  String bairro;
  String cidade;
  String complemento;
  int numero;
  String referencia;
  String rua;
  String uf;

  EnderecoModel(
      {this.id,
      this.descricao,
      this.cep,
      this.bairro,
      this.cidade,
      this.complemento,
      this.numero,
      this.referencia,
      this.rua,
      this.uf});

  factory EnderecoModel.fromDocument(DocumentSnapshot doc) {
    return EnderecoModel(
        id: doc.id,
        descricao: doc['descricao'],
        cep: doc['cep'],
        bairro: doc['bairro'],
        cidade: doc['cidade'],
        complemento: doc['complemento'],
        numero: doc['numero'],
        referencia: doc['referencia'],
        rua: doc['rua'],
        uf: doc['uf'],);
  }
}
