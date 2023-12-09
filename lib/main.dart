import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/firebase_options.dart';
import 'package:login/pages/home.dart';
import 'package:login/pages/login.dart';
import 'package:login/stores/information/information_list.dart';
import 'package:login/stores/login.dart';

final storeInformations = StoreInformationList();
StoreLogin storeLogin = StoreLogin();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const MyApp(),
  );
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
        routes: {
          '/login': (context) => const LoginPage(),
          '/home': (context) => const HomePage(),
        },
        initialRoute: '/login',
      ),
    );
  }
}

