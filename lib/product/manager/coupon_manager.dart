import 'package:flutter/material.dart';
import '../../features/match/model/match_model.dart';

class CouponManager extends ChangeNotifier {
  List<Children> matchItems = [];

  void addItem(Children? item) {
    matchItems.add(item!);
    notifyListeners();
  }

  void removeItem(Children? item) {
    matchItems.remove(item!);
    notifyListeners();
  }
}
