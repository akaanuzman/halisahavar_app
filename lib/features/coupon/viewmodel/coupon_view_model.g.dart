// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CouponViewModel on _CouponViewModelBase, Store {
  final _$isOpenAtom = Atom(name: '_CouponViewModelBase.isOpen');

  @override
  bool get isOpen {
    _$isOpenAtom.reportRead();
    return super.isOpen;
  }

  @override
  set isOpen(bool value) {
    _$isOpenAtom.reportWrite(value, super.isOpen, () {
      super.isOpen = value;
    });
  }

  final _$_CouponViewModelBaseActionController =
      ActionController(name: '_CouponViewModelBase');

  @override
  void openToClose() {
    final _$actionInfo = _$_CouponViewModelBaseActionController.startAction(
        name: '_CouponViewModelBase.openToClose');
    try {
      return super.openToClose();
    } finally {
      _$_CouponViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isOpen: ${isOpen}
    ''';
  }
}
