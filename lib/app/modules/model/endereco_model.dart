import 'package:cloud_firestore/cloud_firestore.dart';

class EnderecoModel {
  String id;
  String descricao;
  String cep;
  String bairro;
  String cidade;
  String? complemento;
  String numero;
  String? referencia;
  String rua;
  String uf;

  EnderecoModel(
      {required this.id,
      required this.descricao,
      required this.cep,
      required this.bairro,
      required this.cidade,
      this.complemento,
      required this.numero,
      this.referencia,
      required this.rua,
      required this.uf});

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
