import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/model/endereco_model.dart';
import 'cad_end_controller.dart';

class CadEndPage extends StatefulWidget {
  final String title;
  final EnderecoModel model;
  const CadEndPage({Key key, this.title = "CadEnd", this.model})
      : super(key: key);

  @override
  _CadEndPageState createState() => _CadEndPageState();
}

class _CadEndPageState extends ModularState<CadEndPage, CadEndController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      primary: Colors.orange,
    );

    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          title: Text(
            'Cadastro de Endereço',
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Form(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20, top: 5),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    onChanged: controller.setDescricao,
                    controller:
                        TextEditingController(text: controller.descricao),
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                    decoration: InputDecoration(
                      fillColor: Theme.of(context).primaryColor,
                      labelText: "Descrição do Endereço",
                      labelStyle: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor, width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor, width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor, width: 1)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20, top: 5),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    onChanged: controller.setCep,
                    controller: TextEditingController(text: controller.cep),
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                    decoration: InputDecoration(
                      fillColor: Theme.of(context).primaryColor,
                      labelText: "CEP",
                      labelStyle: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor, width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor, width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor, width: 1)),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(right: 20, left: 20, top: 5),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          onChanged: controller.setRua,
                          controller:
                              TextEditingController(text: controller.rua),
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                          decoration: InputDecoration(
                            fillColor: Theme.of(context).primaryColor,
                            labelText: "Rua",
                            labelStyle: TextStyle(
                              color: Theme.of(context).primaryColor,
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).primaryColor,
                                    width: 1)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).primaryColor,
                                    width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).primaryColor,
                                    width: 1)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(right: 20, left: 20, top: 5),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          onChanged: controller.setNum,
                          controller:
                              TextEditingController(text: controller.numero),
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                          decoration: InputDecoration(
                            fillColor: Theme.of(context).primaryColor,
                            labelText: "Nº",
                            labelStyle: TextStyle(
                              color: Theme.of(context).primaryColor,
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).primaryColor,
                                    width: 1)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).primaryColor,
                                    width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).primaryColor,
                                    width: 1)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20, top: 5),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    onChanged: controller.setComplemento,
                    controller:
                        TextEditingController(text: controller.complemento),
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                    decoration: InputDecoration(
                      fillColor: Theme.of(context).primaryColor,
                      labelText: "Complemento",
                      labelStyle: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor, width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor, width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor, width: 1)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20, top: 5),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    onChanged: controller.setBairro,
                    controller: TextEditingController(text: controller.bairro),
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                    decoration: InputDecoration(
                      fillColor: Theme.of(context).primaryColor,
                      labelText: "Bairro",
                      labelStyle: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor, width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor, width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor, width: 1)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20, top: 5),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    onChanged: controller.setReferencia,
                    controller:
                        TextEditingController(text: controller.referencia),
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                    decoration: InputDecoration(
                      fillColor: Theme.of(context).primaryColor,
                      labelText: "Referência",
                      labelStyle: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor, width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor, width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor, width: 1)),
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(right: 20, left: 20, top: 5),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          onChanged: controller.setCidade,
                          controller:
                              TextEditingController(text: controller.cidade),
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                          decoration: InputDecoration(
                            fillColor: Theme.of(context).primaryColor,
                            labelText: "Cidade",
                            labelStyle: TextStyle(
                              color: Theme.of(context).primaryColor,
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).primaryColor,
                                    width: 1)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).primaryColor,
                                    width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).primaryColor,
                                    width: 1)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(right: 20, left: 20, top: 5),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          onChanged: controller.setUF,
                          controller:
                              TextEditingController(text: controller.uf),
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                          decoration: InputDecoration(
                            fillColor: Theme.of(context).primaryColor,
                            labelText: "UF",
                            labelStyle: TextStyle(
                              color: Theme.of(context).primaryColor,
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).primaryColor,
                                    width: 1)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).primaryColor,
                                    width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).primaryColor,
                                    width: 1)),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: ElevatedButton(
                    style: buttonStyle,
                    onPressed: () {
                      if (widget.model == null) {
                        controller.insertEndereco(
                            controller.bairro,
                            controller.cep,
                            controller.cidade,
                            controller.complemento,
                            controller.descricao,
                            controller.uf,
                            controller.numero,
                            controller.referencia,
                            controller.rua);
                      } else {
                        widget.model.bairro = controller.bairro;
                        widget.model.cep = controller.cep;
                        widget.model.cidade = controller.cidade;
                        widget.model.complemento = controller.complemento;
                        widget.model.descricao = controller.descricao;
                        widget.model.uf = controller.uf;
                        widget.model.numero = controller.numero;
                        widget.model.referencia = controller.referencia;
                        widget.model.rua = controller.rua;
                        controller.updateEndereco(widget.model);
                      }
                      Modular.to.pop();
                    },
                    child: Text(
                      "Salvar",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
