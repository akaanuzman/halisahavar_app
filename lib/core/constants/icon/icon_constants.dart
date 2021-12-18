//* uygulamadaki ikonlar için oluşturduğum singleton sınıf

import 'package:flutter/material.dart';

class IconConstants {
  static IconConstants? _instance;
  static IconConstants? get instance {
    if (_instance != null) {
      return _instance;
    } else {
      _instance = IconConstants.init();
      return _instance!;
    }
  }

  IconConstants.init();

  final IconData firstTabBar = Icons.sports_soccer;
  final IconData secondTabBar = Icons.savings;
  final IconData listViewLeading = Icons.sports;
  final IconData listViewTrailing = Icons.add_task;
  final IconData fabIcon = Icons.add;
  final IconData couponMatchListViewLeading = Icons.attach_money;
  final IconData couponListViewLeading = Icons.description;
}
