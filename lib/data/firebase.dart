// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:login/main.dart';

Future<void> registerOrLogin(String email, String senha) async {
  try {
    UserCredential resultado = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: senha,
    );
    storeLogin.chenageCredential(resultado.user);
  } on FirebaseAuthException catch (e) {
    if (e.code == 'email-already-in-use') {
      UserCredential resultado = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: senha,
      );

      storeLogin.chenageCredential(resultado.user);
      return;
    }
    rethrow;
  } catch (e) {
    rethrow;
  }
}
