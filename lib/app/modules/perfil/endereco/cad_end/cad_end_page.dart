import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'cad_end_controller.dart';

class CadEndPage extends StatefulWidget {
  final String title;
  const CadEndPage({Key key, this.title = "CadEnd"}) : super(key: key);

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
                    //onChanged: change,
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
                              color: Theme.of(context).primaryColor,
                              width: 1
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 1
                          )
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 1
                          )
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20, top: 5),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    //onChanged: change,
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
                              color: Theme.of(context).primaryColor,
                              width: 1
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 1
                          )
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 1
                          )
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                          padding: const EdgeInsets.only(right: 20, left: 20, top: 5),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            //onChanged: change,
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
                                      width: 1
                                  )
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 1
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 1
                                  )
                              ),
                            ),
                          ),
                        ),
                    ),
                    SizedBox(
                      width: 100,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20, left: 20, top: 5),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          //onChanged: change,
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
                                    width: 1
                                )
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).primaryColor,
                                    width: 1
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).primaryColor,
                                    width: 1
                                )
                            ),
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
                    //onChanged: change,
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
                              color: Theme.of(context).primaryColor,
                              width: 1
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 1
                          )
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 1
                          )
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20, top: 5),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    //onChanged: change,
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
                              color: Theme.of(context).primaryColor,
                              width: 1
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 1
                          )
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 1
                          )
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20, top: 5),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    //onChanged: change,
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
                              color: Theme.of(context).primaryColor,
                              width: 1
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 1
                          )
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 1
                          )
                      ),
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20, left: 20, top: 5),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          //onChanged: change,
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
                                    width: 1
                                )
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).primaryColor,
                                    width: 1
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).primaryColor,
                                    width: 1
                                )
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20, left: 20, top: 5),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          //onChanged: change,
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
                                    width: 1
                                )
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).primaryColor,
                                    width: 1
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).primaryColor,
                                    width: 1
                                )
                            ),
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
