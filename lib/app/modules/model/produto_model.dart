import 'package:cloud_firestore/cloud_firestore.dart';

class ProdutoModel {
  String id;
  String descricao;
  String foto;
  double preco;
  String categoria;
  bool destaque;

  ProdutoModel(
      {this.id, this.descricao, this.foto, this.preco, this.categoria, this.destaque});

  factory ProdutoModel.fromDocument(DocumentSnapshot doc) {
    return ProdutoModel(
        id: doc.id,
        descricao: doc['descricao'],
        foto: doc['foto'],
        preco: double.parse(doc['preco'].toString()),
        categoria: doc['categoria'],
        destaque: doc['destaque']
    );
  }
}
