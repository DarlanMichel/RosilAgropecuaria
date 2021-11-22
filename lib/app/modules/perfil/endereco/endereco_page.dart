import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/model/endereco_model.dart';
import 'endereco_controller.dart';

class EnderecoPage extends StatefulWidget {
  final String title;
  const EnderecoPage({Key? key, this.title = "Endereco"}) : super(key: key);

  @override
  _EnderecoPageState createState() => _EnderecoPageState();
}

class _EnderecoPageState
    extends ModularState<EnderecoPage, EnderecoController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      primary: Theme.of(context).colorScheme.secondary,
    );

    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          title: Text(
            'Endereço',
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  height: MediaQuery.of(context).size.height - 170,
                  child: Observer(builder: (_) {
                    if (controller.listEnd == null) {
                      return Center(child: Text("Nenhum endereço cadastrado!"));
                    }

                    List<EnderecoModel> listEnde = controller.listEnd?.value ?? [];

                    return ListView.builder(
                      itemCount: listEnde.length,
                      itemBuilder: (_, index) {
                        EnderecoModel model = listEnde[index];
                        return Card(
                          margin: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(5),
                                  child: Icon(
                                    Icons.home,
                                    color: Theme.of(context).primaryColor,
                                    size: 45,
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Expanded(
                                            child: Text(
                                              model.descricao,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                            ),
                                          ),
                                          PopupMenuButton<String>(
                                            onSelected: controller.selecOption,
                                            itemBuilder: (context) {
                                              controller.model = model;
                                              return controller.opEnd
                                                  .map((String op) {
                                                return PopupMenuItem<String>(
                                                    value: op, child: Text(op));
                                              }).toList();
                                            },
                                          ),
                                        ],
                                      ),
                                      Text(
                                        model.rua +
                                            ', ' +
                                            model.numero.toString() +
                                            ' - ' +
                                            model.bairro,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                      ),
                                      Text(
                                        model.cidade + ' - ' + model.uf,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                      ),
                                      Text(
                                        model.complemento! +
                                            ' - ' +
                                            model.referencia!,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  })),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: ElevatedButton(
                  style: buttonStyle,
                  onPressed: () {
                    Modular.to.pushNamed('/cadend');
                  },
                  child: Text(
                    "Novo Endereço",
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
    );
  }
}
