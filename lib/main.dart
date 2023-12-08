import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/firebase_options.dart';
import 'package:login/pages/home_page.dart';

import 'package:login/pages/login_page.dart';
import 'package:login/stores/information.dart';
import 'package:login/stores/login.dart';

final counter = StoreLogin();

final information = StoreInformation(description, id);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

StoreLogin storeLogin = StoreLogin();

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
        routes: {
          '/login': (context) => const LoginPage(),
          '/home': (context) => const HomePage(),
        },
        initialRoute: '/login',
      ),
    );
  }
}
