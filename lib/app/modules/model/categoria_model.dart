import 'package:cloud_firestore/cloud_firestore.dart';

class CategoriaModel {
  String id;
  String descricao;
  String foto;

  CategoriaModel({required this.id, required this.descricao, required this.foto});

  factory CategoriaModel.fromDocument(DocumentSnapshot doc) {
    return CategoriaModel(
      id: doc.id,
      descricao: doc['desc'],
      foto: doc['foto']
    );
  }

}
