// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:halisahavar_app/core/constants/color/color_constants.dart';
import 'package:halisahavar_app/core/constants/icon/icon_constants.dart';

//* Select Match.
// I defined it inside the class for this widget where it would be illogical to call the buildcontext method again.

class SelectMatch extends IconButton {
  final void Function()? onPressed;
  SelectMatch({Key? key, this.onPressed})
      : super(
          key: key,
          onPressed: () {},
          icon: Icon(IconConstants.instance!.listViewTrailing),
          color: ColorConstants.instance!.salem,
        );
}
