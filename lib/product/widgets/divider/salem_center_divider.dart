import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../../core/constants/color/color_constants.dart';

//* Salem Color Divider.
// I defined it inside the class for this widget where it would be illogical to call the buildcontext method again.

class SalemCenterDivider extends Divider {
  final BuildContext context;
  SalemCenterDivider({Key? key, required this.context})
      : super(
          key: key,
          color: ColorConstants.instance?.salem,
          indent: context.normalValue,
          endIndent: context.normalValue,
        );
}
