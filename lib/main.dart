import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/pages/home_page.dart';

import 'package:login/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(321, 649),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'Todo List - Teste',
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
