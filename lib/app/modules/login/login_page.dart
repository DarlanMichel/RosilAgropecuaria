import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rosilagropecuaria/app/modules/helpers/validators.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key? key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  static final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

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
              child: Form(
                key: formKey,
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
                        controller: emailController,
                        enabled: !controller.loading,
                        decoration: InputDecoration(
                            hintText: 'seuemail@email.com',
                            labelText: 'E-mail'),
                        keyboardType: TextInputType.emailAddress,
                        autocorrect: false,
                        validator: (email) {
                          if (!emailValid(email!)) return 'E-mail inválido';
                          return null;
                        },
                        onChanged: controller.setEmail,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 30, left: 30, top: 10, bottom: 10),
                      child: TextFormField(
                        obscureText: true,
                        controller: passController,
                        enabled: !controller.loading,
                        autocorrect: false,
                        decoration: InputDecoration(
                            hintText: '****', labelText: 'Senha'),
                        validator: (pass) {
                          if (pass!.isEmpty || pass.length < 6)
                            return 'Senha inválida';
                          return null;
                        },
                        onChanged: controller.setSenha,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 30, top: 10, bottom: 40),
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
                        child: ElevatedButton(
                            style: buttonStyle,
                            onPressed: controller.loading
                                ? null
                                : () {
                                    if (formKey.currentState!.validate()) {
                                      controller.signIn(
                                          onFail: (e) {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(SnackBar(
                                              content:
                                                  Text('Falha ao entrar: $e'),
                                              backgroundColor: Colors.red,
                                              duration:
                                                  const Duration(seconds: 5),
                                            ));
                                          },
                                          onSuccess: () async {
                                            SharedPreferences shared =
                                                await SharedPreferences
                                                    .getInstance();
                                            shared.setString('email',
                                                '${emailController.text}');
                                            Modular.to
                                                .pushReplacementNamed('/home');
                                          });
                                    }
                                  },
                            child: Observer(
                              builder: (_) {
                                return controller.loading
                                    ? CircularProgressIndicator(
                                        valueColor: AlwaysStoppedAnimation(
                                            Colors.white),
                                      )
                                    : Text(
                                        "Entrar",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white),
                                      );
                              },
                            )),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 30, top: 20),
                        child: GestureDetector(
                          child: Text(
                            'Não tem uma conta? Cadastre-se!',
                            style: TextStyle(
                                fontSize: 14,
                                color: Theme.of(context).primaryColor),
                          ),
                          onTap: () {
                            Modular.to.pushNamed('/cadastro');
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
