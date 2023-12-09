// ignore_for_file: library_private_types_in_public_api
import 'package:mobx/mobx.dart';

part 'information.g.dart';

class StoreInformation extends _StoreInformation with _$StoreInformation{
  StoreInformation(String description, String id) : super(description, id);
  Map<String, dynamic> toMap() {
    return {
      'description': description,
      'id': id,
    };
  }
  StoreInformation.fromMap(Map<String, dynamic> map) : super(map['description'], map['id']);
}

abstract class _StoreInformation with Store {
  _StoreInformation(this.description, this.id);

  @observable
  String description = '';

  @observable
  String id;
}
