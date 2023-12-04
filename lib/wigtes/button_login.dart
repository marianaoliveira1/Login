import 'package:flutter/material.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.only(left: 65, right: 65, bottom: 13, top: 13),
        decoration: BoxDecoration(
          color: const Color(0xFF44bd6e),
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Text(
          'Entrar',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
