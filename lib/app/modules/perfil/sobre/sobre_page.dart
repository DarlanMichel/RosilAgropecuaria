import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'sobre_controller.dart';

class SobrePage extends StatefulWidget {
  final String title;
  const SobrePage({Key? key, this.title = "Sobre"}) : super(key: key);

  @override
  _SobrePageState createState() => _SobrePageState();
}

class _SobrePageState extends ModularState<SobrePage, SobreController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          title: Text(
            'Sobre Nós',
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
          centerTitle: true,
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
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 40, left: 10, right: 10),
                  child: Text(
                    "A Rosil Agropecuária é uma loja completa!" + 
                    "\nTem nutrição animal, adubos, medicamentos, vacinas, linha pet com tudo que seu animalzinho de estimação precisa, e para os amigos gaudérios, vestimenta gaúcha."+
                    "\n\nVenha nos visitar e conferir de perto, a qualidade de nossos produtos, os ótimos preços, e nosso atendimento!",
                      style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "Estamos localizados na",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 14
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "Av. XV de Novembro, 1429",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 14
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "Em frente a loja Becker",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 14
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "Tapera - RS",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 14
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "Fone/Whatsapp: (54) 3385-2816",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 14
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
