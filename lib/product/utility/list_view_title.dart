import 'package:flutter/material.dart';
import '../../core/widget/text/salem_bold_text.dart';
import '../../features/match/viewmodel/match_view_model.dart';

//* ListView Title.
// I defined it inside the class for this widget where it would be illogical to call the buildcontext method again.

class ListViewTitle extends Row {
  final MatchViewModel viewModel;
  final int index;
  ListViewTitle({Key? key, required this.viewModel, required this.index})
      : super(
          key: key,
          children: [
            SalemBoldText(
                data: viewModel.items.children?[index]?.evSahibi ??
                    "EV_SAHIBI_YOK"),
            SalemBoldText(data: " x "),
            SalemBoldText(
              data: viewModel.items.children?[index]?.deplasman ??
                  "DEPLASMAN_YOK",
            )
          ],
        );
}
