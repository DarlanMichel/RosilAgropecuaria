import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/model/cliente_model.dart';
import 'package:rosilagropecuaria/app/modules/repositories/interfaces/cliente_repository_inteface.dart';

part 'cliente_repository.g.dart';

@Injectable()
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

  @override
  void dispose() {}

}