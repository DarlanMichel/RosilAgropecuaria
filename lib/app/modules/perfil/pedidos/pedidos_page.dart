import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'pedidos_controller.dart';

class PedidosPage extends StatefulWidget {
  final String title;
  const PedidosPage({Key? key, this.title = "Pedidos"}) : super(key: key);

  @override
  _PedidosPageState createState() => _PedidosPageState();
}

class _PedidosPageState extends ModularState<PedidosPage, PedidosController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          title: Text(
            'Meus Pedidos',
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
              height: MediaQuery.of(context).size.height -90,
              child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (_, index){
                      
                      return Card(
                        margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Código do pedido: $index",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 4.0,),
                              Text(
                                _produtosText(),
                              ),
                              SizedBox(height: 4.0,),
                              Text(
                                "Status do Pedido:",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 4.0,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  _buildCircle("1", "Recebido", 1, 1),
                                  Container(
                                    height: 1.0,
                                    width: 40.0,
                                    color: Colors.grey[500],
                                  ),
                                  _buildCircle("2", "Preparado", 1, 2),
                                  Container(
                                    height: 1.0,
                                    width: 40.0,
                                    color: Colors.grey[500],
                                  ),
                                  _buildCircle("3", "Entregue", 1, 3),
                                ],
                              )
                            ],
                          )
                        ),
                      );
                    },
                  
               
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _produtosText(){
    String text = "Descrição:\n";
    for(var i = 0; i < 2; i++){
      text += "1 x Ração $i - R\$ 10,00\n";
    }
    text += "Total: R\$ 20,00";
    return text;
  }

  Widget _buildCircle(String title, String subtitle, int status, int thisStatus){
    Color backColor;
    Widget child;

    if(status < thisStatus){
      backColor = Colors.grey[500]!;
      child = Text(title, style: TextStyle(color: Colors.white),);
    }else if(status == thisStatus){
      backColor = Colors.blue;
      child = Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Text(title, style: TextStyle(color: Colors.white),),
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          )
        ],
      );
    } else {
      backColor = Colors.green;
      child = Icon(Icons.check, color: Colors.white,);
    }

    return Column(
      children: <Widget>[
        CircleAvatar(
          radius: 20.0,
          backgroundColor: backColor,
          child: child,
        ),
        Text(subtitle)
      ],
    );
  }
}
