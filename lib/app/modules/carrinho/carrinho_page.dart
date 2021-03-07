import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'carrinho_controller.dart';

class CarrinhoPage extends StatefulWidget {
  final String title;
  const CarrinhoPage({Key key, this.title = "Carrinho"}) : super(key: key);

  @override
  _CarrinhoPageState createState() => _CarrinhoPageState();
}

class _CarrinhoPageState
    extends ModularState<CarrinhoPage, CarrinhoController> {

  int _count = 1;

  @override
  Widget build(BuildContext context) {
    
    String dropdownEnd = 'Selecione o Endereço';
    String dropdownFpgto = 'Selecione a forma de Pagamento';

    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      primary: Colors.orange,
    );

    final ButtonStyle buttonStyle2 = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      primary: Theme.of(context).accentColor,
    );

    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        bottomNavigationBar: BottomAppBar(
          color: Theme.of(context).primaryColor,
          child: Container(
              child: Padding(
            padding:
                const EdgeInsets.only(right: 30, left: 30, top: 6, bottom: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Modular.to.pushNamed("/home");
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.home_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                      Text(
                        "Início",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Modular.to.pushNamed("/favoritos");
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                      Text(
                        "Favoritos",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                        size: 20,
                      ),
                      Text(
                        "Carrinho",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Modular.to.pushNamed("/perfil");
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.person_outline_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                      Text(
                        "Perfil",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
        ),
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.all(8.0),
                  itemCount: 3,
                  itemBuilder: (_, index) {
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
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 6.0),
                                        child: Text(
                                          'Descrição do produto',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Theme.of(context)
                                                  .primaryColor),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'R\$ 30,00',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Theme.of(context)
                                                  .primaryColor),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          IconButton(
                                            icon: Icon(Icons.remove, color: Theme.of(context).primaryColor,),
                                            onPressed: () {
                                              setState(() {
                                                if (_count == 1) {
                                                  _count = 1;
                                                } else {
                                                  _count--;
                                                }
                                              });
                                            },
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 20, right: 20),
                                            child: Text(
                                              "$_count",
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Theme.of(context).primaryColor
                                              ),
                                            ),
                                          ),
                                          IconButton(
                                              icon: Icon(Icons.add, color: Theme.of(context).primaryColor),
                                              onPressed: () {
                                                setState(() {
                                                  _count++;
                                                });
                                              })
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0, top: 8),
                                        child: GestureDetector(
                                          child: Icon(Icons.delete,
                                              size: 18,
                                              color: Theme.of(context)
                                                  .primaryColor),
                                          onTap: () {},
                                        ),
                                      ),
                                      Container(
                                        height: 52,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
              Container(
                padding: EdgeInsets.only(right: 20, left: 20),
                width: MediaQuery.of(context).size.width,
                child: DropdownButton<String>(
                  value: dropdownEnd,
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 20,
                  items: <String>['Selecione o Endereço', 'Casa']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownEnd = newValue;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                padding: EdgeInsets.only(right: 20, left: 20),
                width: MediaQuery.of(context).size.width,
                child: DropdownButton<String>(
                  value: dropdownFpgto,
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 20,
                  items: <String>[
                    'Selecione a forma de Pagamento',
                    'Dinheiro',
                    'Cartão débito',
                    'Cartão crédito',
                    'Cheque',
                    'Pix'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownFpgto = newValue;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                child: ExpansionTile(
                  title: Text(
                    "Cupom de Desconto",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).primaryColor,
                      fontSize: 14,
                    ),
                  ),
                  leading: Icon(
                    Icons.card_giftcard,
                    color: Theme.of(context).primaryColor,
                  ),
                  trailing:
                      Icon(Icons.add, color: Theme.of(context).primaryColor),
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor,
                                  width: 1)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor,
                                  width: 1)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor,
                                  width: 1)),
                          hintText: "Digite seu Cupom",
                        ),
                        initialValue: "",
                        //onChanged: change,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 130,
                      padding: EdgeInsets.only(bottom: 10),
                      child: ElevatedButton(
                        child: Text(
                          "Validar",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        style: buttonStyle,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                child: Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          "Resumo do Pedido",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).primaryColor),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Subtotal",
                            style: TextStyle(
                                  color: Theme.of(context).accentColor)),
                            Text("R\$ 90,00",
                            style: TextStyle(
                                  color: Theme.of(context).accentColor)),
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Desconto",
                            style: TextStyle(
                                  color: Theme.of(context).accentColor)),
                            Text("R\$ 0,00",
                            style: TextStyle(
                                  color: Theme.of(context).accentColor)),
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Frete",
                            style: TextStyle(
                                  color: Theme.of(context).accentColor)), 
                            Text("R\$ 10,00",
                            style: TextStyle(
                                  color: Theme.of(context).accentColor))
                          ],
                        ),
                        Divider(),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Total",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Theme.of(context).primaryColor),
                            ),
                            Text(
                              "R\$ 100,00",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: ElevatedButton(
                  style: buttonStyle,
                  onPressed: () {},
                  child: Text(
                    "Finalizar compra",
                    style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: ElevatedButton(
                  style: buttonStyle2,
                  onPressed: () {
                    Modular.to.pushNamed("/produtos");
                  },
                  child: Text(
                    "Continuar comprando",
                    style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
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
