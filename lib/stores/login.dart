// ignore_for_file: library_private_types_in_public_api

import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';

part 'login.g.dart';

class StoreLogin extends _StoreLogin with _$StoreLogin{
  StoreLogin() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
        chenageCredential(user);
      }
    });
  }
}

abstract class _StoreLogin with Store {
  @observable
  User? credential;

  @action
  void chenageCredential(User? newCredential) {
    credential = newCredential; 
  }
}


