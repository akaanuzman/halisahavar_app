import 'package:flutter/material.dart';

import '../text/bold_text.dart';

//* Row Text.
// I defined it inside the class for this widget where it would be illogical to call the buildcontext method again.

class RowText extends Row {
  final String titleData;
  final String contentData;
  RowText({Key? key, required this.titleData, required this.contentData})
      : super(
          key: key,
          children: [
            BoldText(data: titleData),
            Text(contentData),
          ],
        );
}
