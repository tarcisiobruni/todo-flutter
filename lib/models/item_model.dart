import 'package:mobx/mobx.dart';
part 'item_model.g.dart';

class ItemModel = _ItemModelBase with _$ItemModel;

abstract class _ItemModelBase with Store {
  _ItemModelBase({this.title, this.check});

  @observable
  String title;
  @action
  settitle(String value) => title = value;

  @observable
  bool check;
  @action
  setcheck(bool value) => check = value;
}
