import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonHome extends StatefulWidget {
  const ButtonHome({super.key});

  @override
  State<ButtonHome> createState() => _ButtonHomeState();
}

class _ButtonHomeState extends State<ButtonHome> {
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.h),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Center(
        child: TextField(
          autofocus: true,
          focusNode: _focusNode,
          textAlign: TextAlign.center,
          decoration: const InputDecoration(
            hintText: "Digite seu texto",
            hintStyle: TextStyle(fontWeight: FontWeight.bold),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
