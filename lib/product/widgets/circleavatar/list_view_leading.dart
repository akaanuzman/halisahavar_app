import 'package:flutter/material.dart';
import '../../../core/constants/color/color_constants.dart';

//* ListView Leading.
// I defined it inside the class for this widget where it would be illogical to call the buildcontext method again.

class ListViewLeading extends CircleAvatar {
  final IconData icon;
  final void Function()? onPressed;
  ListViewLeading({Key? key, required this.icon, this.onPressed})
      : super(
          key: key,
          backgroundColor: ColorConstants.instance!.salem,
          child: IconButton(
            onPressed: onPressed,
            icon: Icon(icon),
            color: Colors.white,
          ),
        );
}
