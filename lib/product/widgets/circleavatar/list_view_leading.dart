import 'package:flutter/material.dart';
import '../../../core/constants/color/color_constants.dart';

//* ListView Leading.
// I defined it inside the class for this widget where it would be illogical to call the buildcontext method again.

class ListViewLeading extends CircleAvatar {
  final IconData icon;
  ListViewLeading({Key? key,required this.icon})
      : super(
          key: key,
          backgroundColor: ColorConstants.instance!.salem,
          child: Icon(
            icon,
            color: Colors.white,
          ),
        );
}
