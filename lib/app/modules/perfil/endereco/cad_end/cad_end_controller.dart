import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/model/endereco_model.dart';
import 'package:rosilagropecuaria/app/modules/repositories/interfaces/endereco_repository_interface.dart';
import 'package:search_cep/search_cep.dart';

part 'cad_end_controller.g.dart';

@Injectable()
class CadEndController = _CadEndControllerBase with _$CadEndController;

abstract class _CadEndControllerBase with Store {
  late final IEnderecoRepository repository;
  final EnderecoModel? model;

  _CadEndControllerBase(this.repository, {@Data this.model}) {
    if (model != null) {
      setDescricao(model!.descricao);
      setCep(model!.cep);
      setRua(model!.rua);
      setNum(model!.numero.toString());
      setBairro(model!.bairro);
      setCidade(model!.cidade);
      setUF(model!.uf);
      setComplemento(model!.complemento!);
      setReferencia(model!.referencia!);
    }
  }

  @observable
  String? rua;

  @action
  void setRua(String _rua) => rua = _rua;

  @observable
  String? numero;

  @action
  void setNum(String _num) => numero = _num;

  @observable
  String? complemento;

  @action
  void setComplemento(String _complemento) => complemento = _complemento;

  @observable
  String? bairro;

  @action
  void setBairro(String _bairro) => bairro = _bairro;

  @observable
  String? referencia;

  @action
  void setReferencia(String _referencia) => referencia = _referencia;

  @observable
  String? cidade;

  @action
  void setCidade(String _cidade) => cidade = _cidade;

  @observable
  String? uf;

  @action
  void setUF(String _uf) => uf = _uf;

  @observable
  String? descricao;

  @action
  void setDescricao(String _descricao) => descricao = _descricao;

  @observable
  String? cep;

  @action
  Future setCep(String _cep) async {
    cep = _cep;
    if (cep!.length == 8) {
      final cepSearch = ViaCepSearchCep();
      final cepJson = await cepSearch.searchInfoByCep(cep: cep!);
      cepJson.fold((l) => null, (r) {
        setRua(r.logradouro!);
        setBairro(r.bairro!);
        setCidade(r.localidade!);
        setUF(r.uf!);
      });
    }
  }

  @action
  Future insertEndereco(String bairro, String cep, String cidade, String complemento, String descricao, String uf, String numero, String referencia, String rua) =>
      repository.insertEnd(bairro, cep, cidade, complemento, descricao, uf, numero, referencia, rua);

  @action
  Future updateEndereco(EnderecoModel model) => repository.updateEnd(model);
}
