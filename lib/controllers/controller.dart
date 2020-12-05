import 'package:mobx/mobx.dart';
import 'package:todolist_mobx/models/item_model.dart';

part 'controller.g.dart';

class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store {
  @observable
  ObservableList<ItemModel> listItem = [].asObservable();

  @computed
  int get totalChecked => listItem.where((element) => element.check).length;

  @action
  addItem(ItemModel item) {
    listItem.add(item);
  }

  @action
  removeItem(ItemModel item) {
    listItem.removeWhere((element) => element.title == item.title);
  }

  @computed
  List<ItemModel> get listFiltered {
    if (filter.isEmpty) {
      return listItem;
    } else {
      return listItem
          .where((element) =>
              element.title.toLowerCase().contains(filter.toLowerCase()))
          .toList();
    }
  }

  @observable
  String filter = '';

  @action
  setfilter(String value) => filter = value;

  @action
  clearFilter() => filter = '';
}
