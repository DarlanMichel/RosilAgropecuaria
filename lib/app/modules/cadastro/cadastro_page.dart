import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/helpers/validators.dart';
import 'package:rosilagropecuaria/app/modules/model/cliente_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'cadastro_controller.dart';

class CadastroPage extends StatefulWidget {
  final String title;
  const CadastroPage({Key key, this.title = "Cadastro"}) : super(key: key);

  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState
    extends ModularState<CadastroPage, CadastroController> {
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
                        enabled: !controller.loading,
                        keyboardType: TextInputType.emailAddress,
                        onChanged: controller.setEmail,
                        validator: (email) {
                          if (email.isEmpty)
                            return 'Campo obrigatório';
                          else if (!emailValid(email)) return 'E-mail inválido';
                          return null;
                        },
                        onSaved: (email) => cliente.email = email,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 30, left: 30, top: 10),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: '****', labelText: 'Senha'),
                        enabled: !controller.loading,
                        validator: (pass) {
                          if (pass.isEmpty)
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
                        enabled: !controller.loading,
                        validator: (pass) {
                          if (pass.isEmpty)
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
                        child: ElevatedButton(
                          style: buttonStyle,
                          onPressed: controller.loading
                              ? null
                              : () {
                                  if (formKey.currentState.validate()) {
                                    formKey.currentState.save();
                                    if (controller.senha !=
                                        controller.confirmaSenha) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                        content: Text('Senhas não coincidem!'),
                                        backgroundColor: Colors.red,
                                      ));
                                      return;
                                    }
                                    controller.signUp(
                                        onSuccess: () async{
                                          SharedPreferences shared =
                                                await SharedPreferences
                                                    .getInstance();
                                            shared.setString('email',
                                                '${cliente.email}');
                                          Modular.to
                                              .pushReplacementNamed('/home');
                                        },
                                        onFail: (e) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(SnackBar(
                                            content:
                                                Text('Falha ao cadastrar: $e'),
                                            backgroundColor: Colors.red,
                                            duration:
                                                const Duration(seconds: 5),
                                          ));
                                        });
                                  }
                                },
                          child: Observer(builder: (_) {
                            return controller.loading
                                ? CircularProgressIndicator(
                                    valueColor:
                                        AlwaysStoppedAnimation(Colors.white),
                                  )
                                : Text(
                                    "Cadastrar",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white),
                                  );
                          }),
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
