import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'endereco_controller.dart';

class EnderecoPage extends StatefulWidget {
  final String title;
  const EnderecoPage({Key key, this.title = "Endereco"}) : super(key: key);

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
      primary: Theme.of(context).accentColor,
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
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (_, index) {
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Expanded(
                                        child: Text(
                                          "Casa",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Theme.of(context).primaryColor,),
                                        ),
                                      ),
                                      //PopupMenuButton<String>(
                                      //onSelected: _selected,
                                      //itemBuilder: (BuildContext context){
                                      //return PopupEndereco.choices.map((String choice){
                                      //return PopupMenuItem<String>(
                                      //value: choice,
                                      //child: Text(choice),
                                      //);
                                      //}).toList();
                                      //},
                                      //),
                                    ],
                                  ),
                                  Text(
                                    "Rua alguma coisa, 013 - Centro,",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  ),
                                  Text(
                                    "Passo Fundo - RS",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  ),
                                  Text(
                                    "apto 111 - próximo a farmácia",
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
                ),
              ),
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
