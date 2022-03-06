import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/helpers/validators.dart';
import 'package:rosilagropecuaria/app/modules/model/cliente_model.dart';
import 'package:rosilagropecuaria/app/modules/register/presenter/controllers/register_controller.dart';

class RegisterPage extends StatefulWidget {
  final String title;
  const RegisterPage({Key? key, this.title = "Cadastro"}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState
    extends ModularState<RegisterPage, RegisterController> {
  static final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      primary: Colors.orange,
    );

    final ClienteModel cliente = ClienteModel();

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Theme.of(context).backgroundColor,
        body: Form(
          key: formKey,
          child: Stack(
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
                          )),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 30, left: 30, top: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'seuemail@email.com',
                            labelText: 'E-mail'),
                        keyboardType: TextInputType.emailAddress,
                        onChanged: controller.setEmail,
                        validator: (email) {
                          if (email!.isEmpty)
                            return 'Campo obrigatório';
                          else if (!emailValid(email)) return 'E-mail inválido';
                          return null;
                        },
                        onSaved: (email) => cliente.email = email!,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 30, left: 30, top: 10),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: '****', labelText: 'Senha'),
                        validator: (pass) {
                          if (pass!.isEmpty)
                            return 'Campo obrigatório';
                          else if (pass.length < 6) return 'Senha muito curta';
                          return null;
                        },
                        onChanged: controller.setSenha,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 30, left: 30, top: 10, bottom: 10),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: '****', labelText: 'Repita a Senha'),
                        validator: (pass) {
                          if (pass!.isEmpty)
                            return 'Campo obrigatório';
                          else if (pass.length < 6) return 'Senha muito curta';
                          return null;
                        },
                        onChanged: controller.setConfirmaSenha,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 250,
                        height: 55,
                        padding: EdgeInsets.only(right: 30),
                        child: Observer(
                          builder: (context) {
                            return ElevatedButton(
                              style: buttonStyle,
                              onPressed: controller.isValid
                                  ? controller.enterRegister
                                  : null,
                              child: Text(
                                        "Cadastrar",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white),
                                      ),
                            );
                          }
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 30, top: 20),
                        child: GestureDetector(
                          child: Text(
                            'Já tem uma conta?',
                            style: TextStyle(
                                fontSize: 14,
                                color: Theme.of(context).primaryColor),
                          ),
                          onTap: () {
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
      ),
    );
  }
}
