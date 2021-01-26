import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'produtos_controller.dart';

class ProdutosPage extends StatefulWidget {
  final String title;
  const ProdutosPage({Key key, this.title = "Produtos"}) : super(key: key);

  @override
  _ProdutosPageState createState() => _ProdutosPageState();
}

class _ProdutosPageState
    extends ModularState<ProdutosPage, ProdutosController> {
  bool favorite = false;
  bool carrinho = false;
  String dropdownValue = 'Ordenar por';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15, right: 30, left: 30),
              child: TextFormField(
                decoration: InputDecoration(
                    fillColor: Theme.of(context).primaryColor,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: 'Procure por seu produto',
                    hintStyle: TextStyle(
                        color: Theme.of(context).primaryColor
                    ),
                    prefixIcon: Icon(Icons.search)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: Row(
                children: [
                  Expanded(
                    child: DropdownButton<String>(
                      value: dropdownValue,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 20,
                        items: <String>['Ordenar por', 'Ordem alfabética', 'Menor Preço', 'Maior Preço']
                            .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      onPressed: () {},
                      color: Colors.orange,
                      child: Text(
                        "Filtrar",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.all(8.0),
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  itemBuilder: (_, index){
                    return Padding(
                      padding: const EdgeInsets.only(right: 5, left: 5),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: [
                                Container(
                                  color: Theme.of(context).accentColor,
                                  height: 80,
                                  width: 80,
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Descrição do produto',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Theme.of(context).primaryColor
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Text(
                                          'R\$ 30,00',
                                        style: TextStyle(
                                            fontSize: 16,
                                          color: Theme.of(context).primaryColor
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          IconButton(
                                              icon: (favorite) ? Icon(Icons.favorite) : Icon(Icons.favorite_border_outlined),
                                              color: Colors.red,
                                              onPressed: (){
                                                setState(() {
                                                  if (favorite == false)
                                                    favorite = true;
                                                  else
                                                    favorite = false;
                                                });
                                              }
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          IconButton(
                                              icon: (carrinho) ? Icon(Icons.shopping_cart) : Icon(Icons.shopping_cart_outlined),
                                              color: Theme.of(context).primaryColor,
                                              onPressed: (){
                                                setState(() {
                                                  if (carrinho == false)
                                                    carrinho = true;
                                                  else
                                                    carrinho = false;
                                                });
                                              }
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
