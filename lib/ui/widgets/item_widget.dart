import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:todolist_mobx/models/item_model.dart';

class ItemWidget extends StatelessWidget {
  final ItemModel item;
  final Function removed;

  const ItemWidget({Key key, this.item, this.removed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return ListTile(
          leading: Checkbox(
            value: item.check,
            onChanged: item.setcheck,
          ),
          title: Text(item.title),
          trailing: IconButton(
              color: Colors.red,
              icon: Icon(Icons.remove_circle_outline),
              onPressed: removed),
        );
      },
    );
  }
}
