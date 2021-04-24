import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/model/endereco_model.dart';

abstract class IEnderecoRepository implements Disposable{
  Future<List<EnderecoModel>> getEndereco();
}