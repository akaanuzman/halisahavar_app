// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MatchViewModel on _MatchViewModelBase, Store {
  final _$itemsAtom = Atom(name: '_MatchViewModelBase.items');

  @override
  MatchModel get items {
    _$itemsAtom.reportRead();
    return super.items;
  }

  @override
  set items(MatchModel value) {
    _$itemsAtom.reportWrite(value, super.items, () {
      super.items = value;
    });
  }

  final _$fetchItemsAsyncAction = AsyncAction('_MatchViewModelBase.fetchItems');

  @override
  Future<void> fetchItems() {
    return _$fetchItemsAsyncAction.run(() => super.fetchItems());
  }

  @override
  String toString() {
    return '''
items: ${items}
    ''';
  }
}
