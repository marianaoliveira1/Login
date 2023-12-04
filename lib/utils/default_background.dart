import 'package:flutter/material.dart';

class DefaultBackground extends StatelessWidget {
  const DefaultBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF1e4e62),
            Color(0xFF2d958e)
          ],
        ),
      ),
    );
  }
}
