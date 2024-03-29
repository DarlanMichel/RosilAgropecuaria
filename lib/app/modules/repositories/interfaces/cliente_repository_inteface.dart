import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/model/cliente_model.dart';

abstract class IClienteRepository implements Disposable {
  Stream<List<ClienteModel>>? getCliente({User firebaseUser});
  Future<void> insertClient(String id, String email);
}
