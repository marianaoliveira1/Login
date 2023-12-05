import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonLogin extends StatelessWidget {
  final VoidCallback onSubmit;
  const ButtonLogin({super.key, required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onSubmit,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF44bd6e),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.r),
        ),
        padding: EdgeInsets.only(
          left: 65.w,
          right: 65.w,
          bottom: 15.h,
          top: 15.h,
        ),
        textStyle: TextStyle(
          color: Colors.white,
          fontSize: 18.sp,
        ),
      ),
      child: Text(
        'Entrar',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.sp,
        ),
      ),
    );
  }
}
