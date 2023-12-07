import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/main.dart';
import 'package:login/utils/default_background.dart';
import 'package:login/wigtes/button_home.dart';
import 'package:login/wigtes/politica_privacidade.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const DefaultBackground(),
        Container(
          margin: EdgeInsets.all(28.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Observer(
                    builder: (_) => Text(
                      '${storeLogin.credential?.user!.email}',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      FirebaseAuth.instance.signOut();
                      Navigator.pushNamed(context, '/login');
                    },
                    child: const Icon(Icons.logout, color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 15.w, right: 15.w),
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Texto Digitado 1",
                            style: TextStyle(color: Colors.black, fontSize: 18.sp, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10.h,
                          ),
                          Icon(
                            Icons.border_color,
                            color: Colors.black,
                            size: 25.h,
                          ),
                          Icon(
                            Icons.delete,
                            color: Colors.red,
                            size: 25.h,
                          ),
                        ],
                      ),
                      const Divider(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              const ButtonHome(),
              Expanded(
                child: Container(),
              ),
              const PoliticaDePrivacidade()
            ],
          ),
        )
      ]),
    );
  }
}
