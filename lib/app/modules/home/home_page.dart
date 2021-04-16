import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/model/categoria_model.dart';
import 'package:rosilagropecuaria/app/modules/model/produto_model.dart';
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
            padding:
                const EdgeInsets.only(right: 30, left: 30, top: 6, bottom: 6),
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
          child: Column(
            children: <Widget>[
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                color: Colors.orange,
                child: Image.network(
                  'https://res.cloudinary.com/dx1tx3aso/image/upload/v1617655415/promocao/IMG-20210120-WA0006_nrbxl3.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 15, bottom: 10, right: 20, left: 20),
                child: TextFormField(
                  onTap: () {
                    Modular.to.pushNamed("/produtos", arguments: '0');
                  },
                  decoration: InputDecoration(
                    fillColor: Theme.of(context).primaryColor,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Procure por seu produto',
                    hintStyle: TextStyle(color: Theme.of(context).primaryColor),
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              Divider(),
              Container(
                height: 150,
                child: Observer(builder: (_) {
                  if (controller.categoriaList == null) {
                    return Center(child: CircularProgressIndicator());
                  }

                  List<CategoriaModel> listCat = controller.categoriaList;

                  return ListView.builder(
                      padding: EdgeInsets.all(8.0),
                      scrollDirection: Axis.horizontal,
                      itemCount: listCat.length,
                      itemBuilder: (_, index) {
                        CategoriaModel catModel = listCat[index];
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
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  child: ClipOval(
                                    child: Image.network(
                                      catModel.foto,
                                      height:
                                          MediaQuery.of(context).size.height,
                                      width: MediaQuery.of(context).size.width,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  Modular.to.pushNamed("/produtos",
                                      arguments: catModel.id);
                                },
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                catModel.descricao,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Theme.of(context).primaryColor),
                              )
                            ],
                          ),
                        );
                      });
                }),
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'Produtos em destaque:',
                    style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 215,
                child: Observer(
                  builder: (_) {
                    if (controller.produtoList == null) {
                    return Center(child: CircularProgressIndicator());
                  }

                  List<ProdutoModel> listProd = controller.produtoList;

                    return ListView.builder(
                        padding: EdgeInsets.all(8.0),
                        scrollDirection: Axis.horizontal,
                        itemCount: listProd.length,
                        itemBuilder: (_, index) {
                          ProdutoModel prodModel = listProd[index];
                          return Padding(
                            padding: const EdgeInsets.only(right: 5, left: 5),
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(                           
                                  width: 130,
                                  child: Column(
                                    children: [
                                      Container(
                                        //color: Theme.of(context).accentColor,
                                        height: 70,
                                        width: 70,
                                        child: Image.network(prodModel.foto == '' ? 'https://www.freeiconspng.com/uploads/no-image-icon-4.png' : prodModel.foto),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Expanded(
                                        child: Text(
                                          prodModel.descricao.toUpperCase(),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text("R\$ ${prodModel.preco.toStringAsFixed(2).replaceAll('.', ',')}")
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        });
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
