import 'package:cloud_firestore/cloud_firestore.dart';

class ProdutoModel {
  DocumentReference id;
  String descricao;
  String foto;
  double preco;
  CollectionReference categoria;

  ProdutoModel({this.id, this.descricao, this.foto, this.preco, this.categoria});

  factory ProdutoModel.fromDocument(DocumentSnapshot doc) {
    return ProdutoModel(
        id: doc.reference, 
        descricao: doc['descricao'], 
        foto: doc['foto'],
        preco: doc['preco'],
        categoria: doc['categoria']
    );
  }
}
