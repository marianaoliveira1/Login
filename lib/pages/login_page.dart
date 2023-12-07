// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/data/firebase.dart';
import 'package:login/main.dart';
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
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const DefaultBackground(),
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.all(28),
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 250.h,
                    ),
                    const TitleLabel(text: "Usuário"),
                    const SizedBox(
                      height: 6,
                    ),
                    MyFormField(
                      controller: emailController,
                      validator: Validation.validationLogin,
                      icon: const Icon(Icons.person),
                      obscureText: false,
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    const TitleLabel(text: "Senha"),
                    SizedBox(
                      height: 6.h,
                    ),
                    MyFormField(
                      controller: senhaController,
                      validator: Validation.validationSenha,
                      icon: const Icon(
                        Icons.lock,
                      ),
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 45.h,
                    ),
                    Center(
                      child: ButtonLogin(
                        onSubmit: () async {
                          if (_formKey.currentState!.validate()) {
                            var email = emailController.text;
                            var senha = senhaController.text;

                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              },
                            );

                            await registerOrLogin(
                              email,
                              senha,
                            );

                            Navigator.pushNamed(context, '/home');
                          }
                        },
                      ),
                    ),
                    const PoliticaDePrivacidade(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
