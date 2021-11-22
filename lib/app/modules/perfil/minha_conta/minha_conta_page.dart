import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'minha_conta_controller.dart';

class MinhaContaPage extends StatefulWidget {
  final String title;
  const MinhaContaPage({Key? key, this.title = "MinhaConta"}) : super(key: key);

  @override
  _MinhaContaPageState createState() => _MinhaContaPageState();
}

class _MinhaContaPageState
    extends ModularState<MinhaContaPage, MinhaContaController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      primary: Colors.orange,
    );


    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
          appBar: AppBar(
            title: Text(
              'Minha Conta',
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
            centerTitle: true,
          ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20, top: 5),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    //onChanged: change,
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                    decoration: InputDecoration(
                      labelText: "Nome",
                      hintText: "Nome",
                      hintStyle: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 1
                          )
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 1
                          )
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 1
                          )
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20, top: 5),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    //onChanged: change,
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                    decoration: InputDecoration(
                      labelText: "E-mail",
                      hintText: "E-mail",
                      hintStyle: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 1
                          )
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 1
                          )
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 1
                          )
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: ElevatedButton(
                    style: buttonStyle,
                    onPressed: () {
                      Modular.to.pop();
                    },
                    child: Text(
                      "Salvar",
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
