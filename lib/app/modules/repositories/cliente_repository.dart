import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rosilagropecuaria/app/modules/model/cliente_model.dart';
import 'package:rosilagropecuaria/app/modules/repositories/cliente_repository_inteface.dart';

class ClienteRepository implements IClienteRepository{
  final FirebaseFirestore firestore;

  ClienteRepository(this.firestore);
  
  
  @override
  Stream<List<ClienteModel>> getCliente() {
    return firestore.collection('users').snapshots().map((query) {
      return query.docs.map((doc) {
        return ClienteModel.fromDocument(doc);
      }).toList();
    });
  }

}