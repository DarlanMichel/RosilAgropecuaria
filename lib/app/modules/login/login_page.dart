import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
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
        resizeToAvoidBottomPadding: false,
        //resizeToAvoidBottomInset: false,
        backgroundColor: Theme.of(context).backgroundColor,
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
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Image.asset(
                        'images/Logo Rosil.png',
                        fit: BoxFit.fill,
                        width: 200,
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30, left: 30, top: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'seuemail@email.com',
                        labelText: 'E-mail'
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30, left: 30, top: 10, bottom: 10),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: '****',
                          labelText: 'Senha'
                      ),
                    ),
                  ),
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
                        onPressed: () {
                          Modular.to.pushReplacementNamed('/home');
                        },
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
                      child: GestureDetector(
                        child: Text(
                          'Não tem uma conta? Cadastre-se!',
                          style: TextStyle(
                              fontSize: 14,
                              color: Theme.of(context).primaryColor),
                        ),
                        onTap: (){
                          Modular.to.pushNamed('/cadastro');
                        },
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
