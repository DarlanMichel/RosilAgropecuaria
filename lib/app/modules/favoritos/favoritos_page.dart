import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'favoritos_controller.dart';

class FavoritosPage extends StatefulWidget {
  final String title;
  const FavoritosPage({Key? key, this.title = "Favoritos"}) : super(key: key);

  @override
  _FavoritosPageState createState() => _FavoritosPageState();
}

class _FavoritosPageState
    extends ModularState<FavoritosPage, FavoritosController> {
  bool favorite = false;
  bool carrinho = false;

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
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.favorite,
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
        body: Column(
          children: [
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
                                  color: Theme.of(context).colorScheme.secondary,
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
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 15),
                                            child: Text(
                                              'R\$ 30,00',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Theme.of(context).primaryColor
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container()
                                          ),
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
