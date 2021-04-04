import 'package:cloud_firestore/cloud_firestore.dart';

class CategoriaModel {
  DocumentReference id;
  String descricao;
  String foto;

  CategoriaModel({this.id, this.descricao, this.foto});

  factory CategoriaModel.fromDocument(DocumentSnapshot doc) {
    return CategoriaModel(
      id: doc.reference,
      descricao: doc['desc'],
      foto: doc['foto']
    );
  }

}
