import 'package:flutter/material.dart';
import 'package:login/pages/home_page.dart';
import 'package:login/utils/default_background.dart';
import 'package:login/utils/validacao.dart';
import 'package:login/wigtes/button_login.dart';
import 'package:login/wigtes/form_fild.dart';
import 'package:login/wigtes/politica_privacidade.dart';
import 'package:login/wigtes/title_label.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const DefaultBackground(),
          Container(
            margin: const EdgeInsets.all(28),
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 250,
                  ),
                  const TitleLabel(text: "Usuário"),
                  const SizedBox(
                    height: 6,
                  ),
                  const MyFormField(
                    validator: Validation.validationLogin,
                    icon: Icon(Icons.person),
                    obscureText: false,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const TitleLabel(text: "Senha"),
                  const SizedBox(
                    height: 6,
                  ),
                  const MyFormField(
                    validator: Validation.validationSenha,
                    icon: Icon(
                      Icons.lock,
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  Center(
                    child: ButtonLogin(
                      onSubmit: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  const PoliticaDePrivacidade(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
