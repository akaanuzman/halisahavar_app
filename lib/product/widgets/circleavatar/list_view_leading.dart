import 'package:flutter/material.dart';
import '../../../core/constants/color/color_constants.dart';
import '../../../core/constants/icon/icon_constants.dart';

//* ListView Leading.
// I defined it inside the class for this widget where it would be illogical to call the buildcontext method again.

class ListViewLeading extends CircleAvatar {
  ListViewLeading({Key? key})
      : super(
          key: key,
          backgroundColor: ColorConstants.instance!.salem,
          child: Icon(
            IconConstants.instance!.listViewLeading,
            color: Colors.white,
          ),
        );
}
