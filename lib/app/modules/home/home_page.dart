import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        bottomNavigationBar: BottomAppBar(
          color: Theme.of(context).primaryColor,
          child: Container(
            child: Padding(
            padding: const EdgeInsets.only(right: 30, left: 30, top: 6, bottom: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.home,
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
                  onTap: () {
                    Modular.to.pushNamed("/carrinho");
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.shopping_cart_outlined,
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
                  onTap: (){
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
          child: Column(
            children: <Widget>[
              Container(
                height: 200,
                color: Colors.orange,
              ),
              Container(
                padding: const EdgeInsets.only(top: 15, bottom: 10, right: 20, left: 20),
                child: TextFormField(
                  onTap: (){
                    Modular.to.pushNamed("/produtos");
                  },
                  decoration: InputDecoration(
                    fillColor: Theme.of(context).primaryColor,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Procure por seu produto',
                    hintStyle: TextStyle(
                      color: Theme.of(context).primaryColor
                    ),
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              Divider(),
              Container(
                height: 150,
                child: ListView.builder(
                  padding: EdgeInsets.all(8.0),
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (_, index){
                    return Padding(
                      padding: const EdgeInsets.only(right: 10, left: 10),
                      child: Column(
                        children: [
                          GestureDetector(
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.orange,
                              ),
                            ),
                            onTap: (){
                              Modular.to.pushNamed("/produtos");
                            },
                          ),
                          SizedBox(height: 10,),
                          Text("Pet",
                            style: TextStyle(
                                fontSize: 16,
                                color: Theme.of(context).primaryColor
                            ),
                          )
                        ],
                      ),
                    );
                  }

                ),
              ),
              Divider(),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'Produtos em destaque:',
                    style: TextStyle(
                      fontSize: 18,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 190,
                child: ListView.builder(
                    padding: EdgeInsets.all(8.0),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (_, index){
                      return Padding(
                        padding: const EdgeInsets.only(right: 5, left: 5),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 130,
                              width: 100,
                              child: Column(
                                children: [
                                  Container(
                                    color: Theme.of(context).accentColor,
                                    height: 70,
                                    width: 70,
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    'Descrição do produto',
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                      'R\$ 30,00'
                                  )
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
      ),
    );
  }
}
