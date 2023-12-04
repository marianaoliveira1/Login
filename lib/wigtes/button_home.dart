import 'package:flutter/material.dart';

class ButtonHome extends StatelessWidget {
  const ButtonHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Text(
        'Digite seu texto',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
