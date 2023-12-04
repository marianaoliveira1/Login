import 'package:flutter/material.dart';

class TitleLabel extends StatelessWidget {
  final String text;
  const TitleLabel({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
