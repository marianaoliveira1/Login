import 'package:flutter/material.dart';
import 'package:login/utils/default_background.dart';
import 'package:login/wigtes/button_home.dart';
import 'package:login/wigtes/politica_privacidade.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const DefaultBackground(),
        Container(
          margin: const EdgeInsets.all(28),
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: const Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Texto Digitado 1",
                            style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.delete,
                            color: Colors.red,
                            size: 30,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const ButtonHome(),
              Expanded(
                child: Container(),
              ),
              const PoliticaDePrivacidade()
            ],
          ),
        )
      ]),
    );
  }
}
