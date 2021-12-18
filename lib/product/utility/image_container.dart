import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class ImageContainer extends Container {
  final BuildContext context;
  ImageContainer({Key? key, required this.context})
      : super(
          key: key,
          height: context.dynamicHeight(0.3),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background.png"),
              fit: BoxFit.cover,
            ),
          ),
        );
}
