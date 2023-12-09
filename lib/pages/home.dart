import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/features/information/input_information.dart';
import 'package:login/main.dart';
import 'package:login/stores/information/information.dart';
import 'package:login/utils/default_background.dart';
import 'package:login/widgtes/default_politica_privacidade.dart';

bool shouldHomeInputStayFocuded = false;


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    shouldHomeInputStayFocuded = true;
    super.initState();
  }
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
                      '${storeLogin.credential?.email}',
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
                      Observer(
                        builder: (_) {
                          var information = storeInformations.informations;
                          return Expanded(
                            child: ListView.separated(
                              separatorBuilder: (context, index) => const Divider(
                                color: Colors.black,
                              ),
                              physics: const BouncingScrollPhysics(),
                              itemCount: information.length,
                              itemBuilder: (context, index) {
                                return HomeInformationTile(
                                  information: information[index],
                                );
                              },
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              InputInformation(
                controller: TextEditingController(),
              ),
              Expanded(
                child: Container(),
              ),
              const DefaultPoliticaDePrivacidade()
            ],
          ),
        )
      ]),
    );
  }
}

class HomeInformationTile extends StatelessWidget {
  const HomeInformationTile({
    super.key,
    required this.information,
  });

  final StoreInformation information;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          information.description,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 10.h,
        ),
        IconButton(
          icon: Icon(
            Icons.border_color,
            color: Colors.black,
            size: 25.h,
          ),
          onPressed: () {
            shouldHomeInputStayFocuded = false;
            showDialog<void>(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Editar'),
                  content: TextField(
                    controller: TextEditingController(text: information.description),
                    onChanged: (value) {
                      storeInformations.updateTodoDescription(
                        information,
                        value,
                      );
                    },
                  ),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Cancelar'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Salvar'),
                    ),
                  ],
                );
              },
            );
            shouldHomeInputStayFocuded = true;
          },
        ),
        IconButton(
          icon: Icon(
            Icons.delete,
            color: Colors.red,
            size: 25.h,
          ),
          onPressed: () {
            showDialog<void>(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Deseja excluir?'),
                  content: const Text(
                    'Deseja excluir o texto digitado?',
                  ),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Não'),
                    ),
                    TextButton(
                      onPressed: () {
                        storeInformations.removeTodo(
                          information,
                        );
                        Navigator.of(context).pop();
                      },
                      child: const Text('Sim'),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ],
    );
  }
}
