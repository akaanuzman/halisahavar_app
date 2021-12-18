// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:halisahavar_app/features/match/viewmodel/match_view_model.dart';
import 'package:halisahavar_app/product/utility/list_view_subtitle.dart';
import 'package:halisahavar_app/product/utility/list_view_title.dart';
import 'package:halisahavar_app/product/widgets/circleavatar/list_view_leading.dart';
import 'package:halisahavar_app/product/widgets/divider/salem_center_divider.dart';
import 'package:halisahavar_app/product/widgets/iconbutton/select_match.dart';
import 'package:kartal/kartal.dart';

class MatchView extends StatelessWidget {
  MatchView({Key? key}) : super(key: key);

  final MatchViewModel _viewModel = MatchViewModel();
  @override
  Widget build(BuildContext context) {
    _viewModel.fetchItems();
    return Scaffold(
      body: _bodyView,
    );
  }

  Observer get _bodyView => Observer(
        builder: (context) => ListView.builder(
          itemCount: _viewModel.items.children?.length ?? 0,
          itemBuilder: (context, index) => _listViewItem(context, index),
        ),
      );

  Column _listViewItem(BuildContext context, int index) => Column(
        children: [
          Padding(
            padding: context.paddingLow,
            child: _listTileCardView(context, index),
          ),
          SalemCenterDivider(context: context)
        ],
      );

  Card _listTileCardView(BuildContext context, int index) => Card(
        shape: RoundedRectangleBorder(borderRadius: context.lowBorderRadius),
        child: _listTileView(index),
      );

  ListTile _listTileView(int index) => ListTile(
        leading: ListViewLeading(),
        title: ListViewTitle(viewModel: _viewModel, index: index),
        subtitle: ListViewSubTitle(viewModel: _viewModel, index: index),
        trailing: SelectMatch(
          onPressed: () {},
        ),
      );
}
