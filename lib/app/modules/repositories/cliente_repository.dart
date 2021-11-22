import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/model/cliente_model.dart';
import 'package:rosilagropecuaria/app/modules/repositories/interfaces/cliente_repository_inteface.dart';

part 'cliente_repository.g.dart';

@Injectable()
class ClienteRepository implements IClienteRepository {
  final FirebaseFirestore firestore;
  final FirebaseAuth auth;

  ClienteRepository(this.firestore, this.auth);

  @override
  Stream<List<ClienteModel>>? getCliente({User? firebaseUser}) {
    final User? currentUser = firebaseUser ?? auth.currentUser;
    if (currentUser != null) {
      return firestore.collection('users').snapshots().map((query) {
        return query.docs.map((doc) {
          return ClienteModel.fromDocument(doc);
        }).toList();
      });
    } else {
      return null;
    }
  }

  @override
  void dispose() {}

  @override
  Future<void> insertClient(String id, String email) {
    return firestore
        .collection('users')
        .doc(id)
        .set({
          'name': null,
          'email': email,
        })
        .then((query) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }
}
