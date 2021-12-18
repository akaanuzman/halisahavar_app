import 'package:flutter/material.dart';
import '../../core/constants/string/string_constants.dart';
import '../../core/widget/row/row_text.dart';
import '../../features/match/viewmodel/match_view_model.dart';

//* ListView Subtitle.
// I defined it inside the class for this widget where it would be illogical to call the buildcontext method again.

class ListViewSubTitle extends Column {
  final MatchViewModel viewModel;
  final int index;
  ListViewSubTitle({Key? key, required this.viewModel, required this.index})
      : super(
          key: key,
          children: [
            RowText(
                titleData: StringConstants.instance!.listViewFirstSubtitle,
                contentData:
                    viewModel.items.children?[index]?.tahmin ?? "TAHMIN_YOK"),
            RowText(
                titleData: StringConstants.instance!.listViewSecondSubtitle,
                contentData:
                    viewModel.items.children?[index]?.oran.toString() ??
                        "ORAN_YOK"),
            RowText(
                titleData: StringConstants.instance!.listViewThirthSubtitle,
                contentData:
                    "%${viewModel.items.children?[index]?.yuzde}"),
          ],
        );
}
