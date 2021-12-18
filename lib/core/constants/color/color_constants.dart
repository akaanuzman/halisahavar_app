//* renkler için oluşturduğum singleton sınıf

import 'package:flutter/material.dart';

class ColorConstants {
  static ColorConstants? _instance;
  static ColorConstants? get instance {
    if (_instance != null) {
      return _instance;
    } else {
      _instance = ColorConstants.init();
      return _instance!;
    }
  }

  ColorConstants.init();

  final Color salem = const Color(0xff0e8a31);
}
