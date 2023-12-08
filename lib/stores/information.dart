// ignore_for_file: library_private_types_in_public_api

import 'package:mobx/mobx.dart';

part 'information.g.dart';

class StoreInformation = _StoreInformation with _$StoreInformation;

abstract class _StoreInformation with Store {
  _StoreInformation(this.description, this.id);

  @observable
  String description = '';

  @observable
  String id;
}
