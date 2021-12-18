// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:halisahavar_app/core/constants/color/color_constants.dart';

//* Salem Bold Text.
// I defined it inside the class for this widget where it would be illogical to call the buildcontext method again.

class SalemBoldText extends Text {
  final String data;
  SalemBoldText({Key? key, required this.data})
      : super(
          data,
          key: key,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: ColorConstants.instance!.salem,
          ),
        );
}
