import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/login/widget/footer/footer_widget.dart';
import 'package:rosilagropecuaria/app/modules/login/widget/header/header_widget.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(233, 243, 253, 1.0),
        body: Stack(
          children: <Widget>[
            Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'images/Rectangle 1.png',
                  fit: BoxFit.fill,
                  width: MediaQuery.of(context).size.width,
                )),
            Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  'images/Rectangle 3.png',
                  fit: BoxFit.fill,
                  width: MediaQuery.of(context).size.width,
                )),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 36,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  TextFormField(),
                  TextFormField(),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(right: 30, top: 10, bottom: 40),
                      child: Text(
                        'Esqueceu a Senha?',
                        style: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context).primaryColor),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 250,
                      height: 55,
                      padding: EdgeInsets.only(right: 30),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                        ),
                        onPressed: () {},
                        color: Colors.orange,
                        child: Text(
                          "Entrar",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(right: 30, top: 20),
                      child: Text(
                        'Não tem uma conta? Cadastre-se!',
                        style: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context).primaryColor),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
