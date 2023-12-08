// ignore_for_file: library_private_types_in_public_api

import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';
part 'login.g.dart';

class StoreLogin = _StoreLogin with _$StoreLogin;

abstract class _StoreLogin with Store {
  @observable
  UserCredential? credential;

  @action
  void chenageCredential(UserCredential newCredential) {
    credential = newCredential; 
  }
}


