// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Controller on _ControllerBase, Store {
  Computed<int> _$totalCheckedComputed;

  @override
  int get totalChecked =>
      (_$totalCheckedComputed ??= Computed<int>(() => super.totalChecked,
              name: '_ControllerBase.totalChecked'))
          .value;
  Computed<List<ItemModel>> _$listFilteredComputed;

  @override
  List<ItemModel> get listFiltered => (_$listFilteredComputed ??=
          Computed<List<ItemModel>>(() => super.listFiltered,
              name: '_ControllerBase.listFiltered'))
      .value;

  final _$listItemAtom = Atom(name: '_ControllerBase.listItem');

  @override
  ObservableList<ItemModel> get listItem {
    _$listItemAtom.reportRead();
    return super.listItem;
  }

  @override
  set listItem(ObservableList<ItemModel> value) {
    _$listItemAtom.reportWrite(value, super.listItem, () {
      super.listItem = value;
    });
  }

  final _$filterAtom = Atom(name: '_ControllerBase.filter');

  @override
  String get filter {
    _$filterAtom.reportRead();
    return super.filter;
  }

  @override
  set filter(String value) {
    _$filterAtom.reportWrite(value, super.filter, () {
      super.filter = value;
    });
  }

  final _$_ControllerBaseActionController =
      ActionController(name: '_ControllerBase');

  @override
  dynamic addItem(ItemModel item) {
    final _$actionInfo = _$_ControllerBaseActionController.startAction(
        name: '_ControllerBase.addItem');
    try {
      return super.addItem(item);
    } finally {
      _$_ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeItem(ItemModel item) {
    final _$actionInfo = _$_ControllerBaseActionController.startAction(
        name: '_ControllerBase.removeItem');
    try {
      return super.removeItem(item);
    } finally {
      _$_ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setfilter(String value) {
    final _$actionInfo = _$_ControllerBaseActionController.startAction(
        name: '_ControllerBase.setfilter');
    try {
      return super.setfilter(value);
    } finally {
      _$_ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic clearFilter() {
    final _$actionInfo = _$_ControllerBaseActionController.startAction(
        name: '_ControllerBase.clearFilter');
    try {
      return super.clearFilter();
    } finally {
      _$_ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listItem: ${listItem},
filter: ${filter},
totalChecked: ${totalChecked},
listFiltered: ${listFiltered}
    ''';
  }
}
