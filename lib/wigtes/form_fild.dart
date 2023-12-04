import 'package:flutter/material.dart';

class MyFormField extends StatelessWidget {
  final Icon icon;
  final TextEditingController controller;
  final bool obscureText;

  const MyFormField({Key? key, required this.controller, required this.obscureText, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var offset2 = const Offset(0, 3);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: offset2,
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        style: const TextStyle(color: Colors.black), // Cor do texto
        decoration: InputDecoration(
          icon: icon,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
