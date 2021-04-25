import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/model/endereco_model.dart';

abstract class IEnderecoRepository implements Disposable {
  Stream<List<EnderecoModel>> getEndereco();
  Future deleteEnd(String idEnd);
  Future insertEnd(String bairro, String cep, String cidade, String complemento, String descricao, String uf, String numero, String referencia, String rua);
  Future updateEnd(EnderecoModel model);
}
