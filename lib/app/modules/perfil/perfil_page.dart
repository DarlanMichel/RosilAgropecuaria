import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'perfil_controller.dart';

class PerfilPage extends StatefulWidget {
  final String title;
  const PerfilPage({Key key, this.title = "Perfil"}) : super(key: key);

  @override
  _PerfilPageState createState() => _PerfilPageState();
}

class _PerfilPageState extends ModularState<PerfilPage, PerfilController> {
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
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.person,
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
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                    padding: const EdgeInsets.only(bottom: 10, top: 30),
                    child: Image.asset(
                      'images/Logo Rosil.png',
                      fit: BoxFit.fill,
                      width: 150,
                    )),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Bem Vindo(a), Fulano dos Santos!",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor, fontSize: 16),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Modular.to.pushNamed("/enderecos");
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Icon(
                            Icons.store_mall_directory_sharp,
                            color: Theme.of(context).primaryColor,
                            size: 26,
                          ),
                        ),
                        Text(
                          'Cadastrar endereço',
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              GestureDetector(
                onTap: () {
                  Modular.to.pushNamed("/pedidos");
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Icon(
                            Icons.local_mall,
                            color: Theme.of(context).primaryColor,
                            size: 26,
                          ),
                        ),
                        Text(
                          'Pedidos',
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              GestureDetector(
                onTap: () {
                  Modular.to.pushNamed("/minhaconta");
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Icon(
                            Icons.person_pin_rounded,
                            color: Theme.of(context).primaryColor,
                            size: 26,
                          ),
                        ),
                        Text(
                          'Minha conta',
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              GestureDetector(
                onTap: () {
                  Modular.to.pushNamed("/sobre");
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Icon(
                            Icons.pin_drop,
                            color: Theme.of(context).primaryColor,
                            size: 26,
                          ),
                        ),
                        Text(
                          'Sobre nós',
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 12,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    FirebaseAuth.instance.signOut();
                    Modular.to.pushReplacementNamed("/login");
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(
                              Icons.logout,
                              color: Theme.of(context).primaryColor,
                              size: 26,
                            ),
                          ),
                          Text(
                            'Sair',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 6,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
