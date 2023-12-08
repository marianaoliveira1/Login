// ignore_for_file: library_private_types_in_public_api

import 'package:login/stores/information.dart';
import 'package:mobx/mobx.dart';

part 'information_list.g.dart';

class StoreInformationList = _StoreInformationList with _$StoreInformationList;

abstract class _StoreInformationList with Store {
  @observable
  ObservableList<StoreInformation> informations = ObservableList<StoreInformation>();

  @action
  void addTodo(String description, String id) {
    final information = StoreInformation(description, id);
    informations.add(information);
  }

  @action
  void removeTodo(StoreInformation information) {
    informations.removeWhere((x) => x == information);
  }
}
