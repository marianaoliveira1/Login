import 'package:flutter/material.dart';
import 'package:login/utils/default_background.dart';
import 'package:login/wigtes/button_login.dart';
import 'package:login/wigtes/form_fild.dart';
import 'package:login/wigtes/politica_privacidade.dart';
import 'package:login/wigtes/title_label.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      body: Stack(
        children: [
          const DefaultBackground(),
          Container(
            margin: const EdgeInsets.all(28),
            padding: const EdgeInsets.only(left: 25, right: 25),
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
                MyFormField(icon: const Icon(Icons.person), controller: emailController, obscureText: false),
                const SizedBox(
                  height: 25,
                ),
                const TitleLabel(text: "Senha"),
                const SizedBox(
                  height: 6,
                ),
                MyFormField(
                    icon: const Icon(
                      Icons.lock,
                    ),
                    controller: passwordController,
                    obscureText: true),
                const SizedBox(
                  height: 45,
                ),
                const Center(child: ButtonLogin()),
                Expanded(child: Container()),
                const PoliticaDePrivacidade()
              ],
            ),
          )
        ],
      ),
    );
  }
}
