import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'cadastro_controller.dart';

class CadastroPage extends StatefulWidget {
  final String title;
  const CadastroPage({Key key, this.title = "Cadastro"}) : super(key: key);

  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState
    extends ModularState<CadastroPage, CadastroController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      primary: Colors.orange, 
    );

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                    padding: const EdgeInsets.only(right: 30, left: 30, top: 10),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: '****',
                          labelText: 'Senha'
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30, left: 30, top: 10, bottom: 10),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: '****',
                          labelText: 'Repita a Senha'
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 250,
                      height: 55,
                      padding: EdgeInsets.only(right: 30),
                      child: ElevatedButton(
                        style: buttonStyle,
                        onPressed: () {
                          Modular.to.pushReplacementNamed('/home');
                        },                        
                        child: Text(
                          "Cadastrar",
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
                          'Já tem uma conta?',
                          style: TextStyle(
                              fontSize: 14,
                              color: Theme.of(context).primaryColor),
                        ),
                        onTap: (){
                          Modular.to.pushNamed('/login');
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
