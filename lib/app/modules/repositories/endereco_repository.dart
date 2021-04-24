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
  Future<List<EnderecoModel>> getEndereco() {
    final String currentUser = auth.currentUser.uid.toString();
    return firestore
        .collection('users')
        .doc(currentUser)
        .collection('endereços')
        .get()
        .then((query) {
      return query.docs.map((doc) {
        return EnderecoModel.fromDocument(doc);
      }).toList();
    });
  }
}
