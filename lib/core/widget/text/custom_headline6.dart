// ignore_for_file: use_key_in_widget_constructors, overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CustomHeadline6 extends Text {
  final String data;
  final BuildContext context;
  final TextAlign? textAlign;
  final Color? color;
  final FontWeight? fontWeight;
  CustomHeadline6(
      {required this.data,
      required this.context,
      this.textAlign,
      this.color,
      this.fontWeight})
      : super(
          data,
          style: context.textTheme.headline6!
              .copyWith(color: color, fontWeight: fontWeight),
          textAlign: textAlign,
        );
}
