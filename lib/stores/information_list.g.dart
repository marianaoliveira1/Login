// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'information_list.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$StoreInformationList on _StoreInformationList, Store {
  late final _$informationsAtom =
      Atom(name: '_StoreInformationList.informations', context: context);

  @override
  ObservableList<StoreInformation> get informations {
    _$informationsAtom.reportRead();
    return super.informations;
  }

  @override
  set informations(ObservableList<StoreInformation> value) {
    _$informationsAtom.reportWrite(value, super.informations, () {
      super.informations = value;
    });
  }

  late final _$_StoreInformationListActionController =
      ActionController(name: '_StoreInformationList', context: context);

  @override
  void addTodo(String description, String id) {
    final _$actionInfo = _$_StoreInformationListActionController.startAction(
        name: '_StoreInformationList.addTodo');
    try {
      return super.addTodo(description, id);
    } finally {
      _$_StoreInformationListActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeTodo(StoreInformation information) {
    final _$actionInfo = _$_StoreInformationListActionController.startAction(
        name: '_StoreInformationList.removeTodo');
    try {
      return super.removeTodo(information);
    } finally {
      _$_StoreInformationListActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
informations: ${informations}
    ''';
  }
}
