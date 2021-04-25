import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/model/endereco_model.dart';
import 'package:rosilagropecuaria/app/modules/repositories/interfaces/endereco_repository_interface.dart';

part 'endereco_repository.g.dart';

@Injectable()
class EnderecoRepository implements IEnderecoRepository {
  final FirebaseFirestore firestore;
  final FirebaseAuth auth;

  EnderecoRepository(this.firestore, this.auth);

  @override
  void dispose() {}

  @override
  Stream<List<EnderecoModel>> getEndereco() {
    final String currentUser = auth.currentUser.uid.toString();
    return firestore
        .collection('users')
        .doc(currentUser)
        .collection('enderecos')
        .snapshots()
        .map((query) {
      return query.docs.map((doc) {
        return EnderecoModel.fromDocument(doc);
      }).toList();
    });
  }

  @override
  Future deleteEnd(String idEnd) {
    final String currentUser = auth.currentUser.uid.toString();
    return firestore
        .collection('users')
        .doc(currentUser)
        .collection('enderecos')
        .doc(idEnd)
        .delete()
        .then((value) => print("Endereço Deleted"))
        .catchError((error) => print("Failed to delete Endereço: $error"));
  }

  @override
  Future insertEnd(String bairro, String cep, String cidade, String complemento, String descricao, String uf, String numero, String referencia, String rua) {
    final String currentUser = auth.currentUser.uid.toString();
    return firestore
        .collection('users')
        .doc(currentUser)
        .collection('enderecos')
        .add(
          {
            'descricao': descricao,
            'cep': cep,
            'bairro': bairro,
            'cidade': cidade,
            'complemento': complemento,
            'numero': numero,
            'referencia': referencia,
            'rua': rua,
            'uf': uf
          }
        )
        .then((value) => print("Endereço Added"))
        .catchError((error) => print("Failed to add Endereço: $error"));
  }

  @override
  Future updateEnd(EnderecoModel model) {
    final String currentUser = auth.currentUser.uid.toString();
    return firestore
        .collection('users')
        .doc(currentUser)
        .collection('enderecos')
        .doc(model.id)
        .update(
          {
            'descricao': model.descricao,
            'cep': model.cep,
            'bairro': model.bairro,
            'cidade': model.cidade,
            'complemento': model.complemento,
            'numero': model.numero,
            'referencia': model.referencia,
            'rua': model.rua,
            'uf': model.uf
          }
        )
        .then((value) => print("Endereço Updated"))
        .catchError((error) => print("Failed to update Endereço: $error"));
  }
}
