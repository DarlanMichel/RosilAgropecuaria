import 'package:rosilagropecuaria/app/modules/model/cliente_model.dart';

abstract class IClienteRepository {
  Stream<List<ClienteModel>> getCliente();
}