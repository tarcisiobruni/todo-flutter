import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:todolist_mobx/controllers/controller.dart';
import 'package:todolist_mobx/ui/widgets/item_widget.dart';

import '../../models/item_model.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  final controller = Controller();
  TextEditingController txtCtrl = TextEditingController();

  _dialog() {
    var item = ItemModel(check: false, title: "");

    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
              actions: [
                FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Cancel")),
                FlatButton(
                    onPressed: () {
                      controller.addItem(item);
                      Navigator.of(context).pop();
                    },
                    child: Text("Add")),
              ],
              title: Text("Add new item"),
              content: TextField(
                  onChanged: item.settitle,
                  decoration: InputDecoration(
                      labelText: "New Item", border: OutlineInputBorder())));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Observer(
          builder: (_) {
            return TextField(
              onChanged: controller.setfilter,
              controller: txtCtrl,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Search..."),
            );
          },
        ),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Observer(
                builder: (_) {
                  return Text("${controller.totalChecked}");
                },
              ),
              onPressed: null),
          IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                controller.clearFilter();
                txtCtrl.clear();
              })
        ],
      ),
      body: Observer(
        builder: (_) {
          return ListView.builder(
            itemBuilder: (_, index) {
              var element = controller.listFiltered[index];
              return ItemWidget(
                  item: element,
                  removed: () {
                    controller.removeItem(element);
                  });
            },
            itemCount: controller.listFiltered.length,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _dialog,
        child: Icon(Icons.add),
      ),
    );
  }
}
