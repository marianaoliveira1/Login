// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$StoreLogin on _StoreLogin, Store {
  late final _$credentialAtom =
      Atom(name: '_StoreLogin.credential', context: context);

  @override
  UserCredential? get credential {
    _$credentialAtom.reportRead();
    return super.credential;
  }

  @override
  set credential(UserCredential? value) {
    _$credentialAtom.reportWrite(value, super.credential, () {
      super.credential = value;
    });
  }

  late final _$_StoreLoginActionController =
      ActionController(name: '_StoreLogin', context: context);

  @override
  void chenageCredential(UserCredential newCredential) {
    final _$actionInfo = _$_StoreLoginActionController.startAction(
        name: '_StoreLogin.chenageCredential');
    try {
      return super.chenageCredential(newCredential);
    } finally {
      _$_StoreLoginActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
credential: ${credential}
    ''';
  }
}
