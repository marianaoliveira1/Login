// ignore_for_file: library_private_types_in_public_api
import 'dart:convert';

import 'package:login/data/shared_preferences.dart';
import 'package:login/stores/information/information.dart';
import 'package:mobx/mobx.dart';

part 'information_list.g.dart';

class StoreInformationList extends _StoreInformationList with _$StoreInformationList {
  StoreInformationList() {
    SharedPreferencesService.getInstance().then((prefs) {
      final todos = prefs.getString('todos');
      if (todos != null) {
        print(todos);
        try {
          final jsonData = json.decode(todos);
          final List<dynamic> list = jsonData['informations'];
          informations = list.map((x) => StoreInformation.fromMap(x)).toList().asObservable();
        } catch (e) {
          print(e);
        }
      }
    });
  }
}

abstract class _StoreInformationList with Store {
  @observable
  ObservableList<StoreInformation> informations = ObservableList<StoreInformation>();

  @action
  void addInformations(String description, String id) {
    final information = StoreInformation(description, id);
    informations.add(information);
    syncWithDevice(informations);
  }

  @action
  void removeTodo(StoreInformation information) {
    informations.removeWhere((x) => x == information);
    syncWithDevice(informations);
  }

  @action
  void updateTodoDescription(StoreInformation information, String description) {
    information.description = description;
    syncWithDevice(informations);
  }

  void syncWithDevice(ObservableList<StoreInformation> informations) {
    SharedPreferencesService.getInstance().then((prefs) {
      prefs.setString(
        'todos',
        json.encode(
          {
            'informations': informations.map((x) => x.toMap()).toList(),
          },
        ),
      );
    });
  }
}
