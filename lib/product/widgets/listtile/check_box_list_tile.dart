// ignore_for_file: implementation_imports, must_call_super

import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../../core/constants/color/color_constants.dart';
import '../../../core/constants/icon/icon_constants.dart';
import '../../../core/widget/text/custom_headline6.dart';
import '../../../features/match/viewmodel/match_view_model.dart';
import '../../manager/coupon_manager.dart';
import '../../utility/list_view_subtitle.dart';
import '../../utility/list_view_title.dart';
import '../circleavatar/list_view_leading.dart';
import 'package:provider/src/provider.dart';

class CheckBoxListTile extends StatefulWidget {
  final MatchViewModel viewModel;
  final int index;
  const CheckBoxListTile(
      {Key? key, required this.viewModel, required this.index})
      : super(key: key);

  @override
  _CheckBoxListTileState createState() => _CheckBoxListTileState();
}

class _CheckBoxListTileState extends State<CheckBoxListTile> with AutomaticKeepAliveClientMixin{
  late final MatchViewModel _viewModel;
  late final int _index;
  @override
  void initState() {
    super.initState();
    _viewModel = widget.viewModel;
    _index = widget.index;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: context.lowBorderRadius),
      color: _viewModel.items.children![_index]!.isSelected
          ? Colors.green.shade200
          : Colors.white,
      child: ListTile(
        leading: ListViewLeading(
          icon: IconConstants.instance!.listViewLeading,
        ),
        title: ListViewTitle(viewModel: _viewModel, index: _index),
        subtitle: ListViewSubTitle(viewModel: _viewModel, index: _index),
        trailing: _checkboxView(context),
      ),
    );
  }

  Checkbox _checkboxView(BuildContext context) => Checkbox(
          activeColor: ColorConstants.instance!.salem,
          value: _viewModel.items.children?[_index]?.isSelected,
          onChanged: (value) {
            setState(() =>
                _viewModel.items.children?[_index]?.isSelected = value!);
            _viewModel.items.children![_index]!.isSelected
                ? addMatch(context, _viewModel, _index)
                : removeMatch(context, _viewModel, _index);
          });

  SnackBar showSnackBar(BuildContext context, MatchViewModel viewModel) =>
      SnackBar(
        content: CustomHeadline6(
          context: context,
          data: viewModel.items.children![_index]!.isSelected
              ? "Maç başarıyla eklendi !"
              : "Maç başarıyla silindi !",
          color: Colors.white,
        ),
        duration: context.durationNormal,
        backgroundColor: ColorConstants.instance!.salem,
      );

  void addMatch(BuildContext context, MatchViewModel viewModel, int index) {
    context.read<CouponManager>().addItem(viewModel.items.children?[index]);
    ScaffoldMessenger.of(context)
        .showSnackBar(showSnackBar(context, viewModel));
  }

  void removeMatch(BuildContext context, MatchViewModel viewModel, int index) {
    context.read<CouponManager>().removeItem(viewModel.items.children?[index]);
    ScaffoldMessenger.of(context)
        .showSnackBar(showSnackBar(context, viewModel));
  }

  @override
  bool get wantKeepAlive => true;
}
