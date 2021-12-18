// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:halisahavar_app/features/match/viewmodel/match_view_model.dart';
import 'package:halisahavar_app/product/widgets/divider/salem_center_divider.dart';
import 'package:halisahavar_app/product/widgets/listtile/check_box_list_tile.dart';
import 'package:kartal/kartal.dart';

class MatchView extends StatelessWidget {
  final MatchViewModel _viewModel = MatchViewModel();

  MatchView({Key? key}) : super(key: key);

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
          itemBuilder: (context, index) => Column(
            children: [
              Padding(
                padding: context.paddingLow,
                child: CheckBoxListTile(viewModel: _viewModel, index: index),
              ),
              SalemCenterDivider(context: context)
            ],
          ),
        ),
      );
}
