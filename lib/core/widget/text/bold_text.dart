// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';

//* Bold Text.
// I defined it inside the class for this widget where it would be illogical to call the buildcontext method again.

class BoldText extends Text {
  final String data;
  final Color? color;

  const BoldText({Key? key, required this.data, this.color})
      : super(
          data,
          key: key,
          style: const TextStyle(fontWeight: FontWeight.bold),
        );
}
