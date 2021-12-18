import 'package:mobx/mobx.dart';
part 'coupon_view_model.g.dart';

class CouponViewModel = _CouponViewModelBase with _$CouponViewModel;

abstract class _CouponViewModelBase with Store {
  @observable
  bool isOpen = true;

  @action
  void openToClose() {
    isOpen = !isOpen;
  }
}