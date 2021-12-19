// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:halisahavar_app/core/constants/color/color_constants.dart';
import 'package:halisahavar_app/core/constants/icon/icon_constants.dart';
import 'package:halisahavar_app/core/constants/string/string_constants.dart';
import 'package:halisahavar_app/core/widget/row/row_text.dart';
import 'package:halisahavar_app/core/widget/text/bold_text.dart';
import 'package:halisahavar_app/core/widget/text/custom_headline6.dart';
import 'package:halisahavar_app/core/widget/text/salem_bold_text.dart';
import 'package:halisahavar_app/features/coupon/viewmodel/coupon_view_model.dart';
import 'package:halisahavar_app/features/match/viewmodel/match_view_model.dart';
import 'package:halisahavar_app/product/utility/image_container.dart';
import 'package:halisahavar_app/product/widgets/divider/salem_center_divider.dart';
import 'package:kartal/kartal.dart';
import 'package:halisahavar_app/product/manager/coupon_manager.dart';
import 'package:halisahavar_app/product/widgets/circleavatar/list_view_leading.dart';
import 'package:provider/provider.dart';

class CouponView extends StatelessWidget {
  final CouponViewModel _viewModel = CouponViewModel();
  CouponView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double totalRatio = 1;

    return Scaffold(
      floatingActionButton: _createCouponFab,
      body: context.watch<CouponManager>().matchItems.isEmpty
          ? Center(
              child: Text(
                'Kuponlarım boş',
                style: context.textTheme.headline5,
              ),
            )
          : Observer(
              builder: (context) => Padding(
                padding: context.paddingLow,
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount:
                            context.watch<CouponManager>().matchItems.length,
                        itemBuilder: (context, index) =>
                            _matchComponentView(context, index),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: _animatedCouponCardView(context, totalRatio),
                    )
                  ],
                ),
              ),
            ),
    );
  }

  FloatingActionButton get _createCouponFab => FloatingActionButton(
        backgroundColor: ColorConstants.instance!.salem,
        onPressed: () => _viewModel.openToClose(),
        tooltip: StringConstants.instance!.fabButtonTooltip,
        child: Icon(IconConstants.instance!.fabIcon),
      );

  Column _matchComponentView(BuildContext context, int index) => Column(
        children: [
          Padding(
            padding: context.paddingLow,
            child: _matchCardView(context, index),
          ),
          SalemCenterDivider(context: context)
        ],
      );

  Card _matchCardView(BuildContext context, int index) => Card(
        shape: RoundedRectangleBorder(borderRadius: context.lowBorderRadius),
        child: _matchListTile(context, index),
      );

  ListTile _matchListTile(BuildContext context, int index) => ListTile(
        leading: _listTileLeading,
        title: _listTileRow(context, index),
        subtitle: _listTileSubtitle(context, index),
        trailing: _listTileTrailing(context, _viewModel, index),
      );

  ListViewLeading get _listTileLeading => ListViewLeading(
        icon: IconConstants.instance!.listViewLeading,
      );

  Row _listTileRow(BuildContext context, int index) => Row(
        children: [
          SalemBoldText(
              data: context.watch<CouponManager>().matchItems[index].evSahibi ??
                  "EV_SAHIBI_YOK"),
          SalemBoldText(data: " x "),
          SalemBoldText(
            data: context.watch<CouponManager>().matchItems[index].deplasman ??
                "DEPLASMAN_YOK",
          )
        ],
      );

  Column _listTileSubtitle(BuildContext context, int index) => Column(
        children: [
          RowText(
              titleData: StringConstants.instance!.listViewFirstSubtitle,
              contentData:
                  context.watch<CouponManager>().matchItems[index].tahmin ??
                      "TAHMIN_YOK"),
          RowText(
              titleData: StringConstants.instance!.listViewSecondSubtitle,
              contentData: context
                  .watch<CouponManager>()
                  .matchItems[index]
                  .oran
                  .toString()),
          RowText(
              titleData: StringConstants.instance!.listViewThirthSubtitle,
              contentData:
                  "%${context.watch<CouponManager>().matchItems[index].yuzde}"),
        ],
      );

  ListViewLeading _listTileTrailing(
          BuildContext context, CouponViewModel viewModel, int index) =>
      ListViewLeading(
        icon: IconConstants.instance!.couponMatchListViewLeading,
        onPressed: () {
          removeMatch(context, index);
          context.read<CouponManager>().matchItems[index].isSelected = (context.read<CouponManager>().matchItems[index].isSelected);
        },
      );

  AnimatedOpacity _animatedCouponCardView(
      BuildContext context, double totalRatio) {
    for (var i = 0; i < context.watch<CouponManager>().matchItems.length; i++) {
      totalRatio *= context.watch<CouponManager>().matchItems[i].oran ?? 1;
    }
    return AnimatedOpacity(
      opacity: _viewModel.isOpen ? 0.0 : 1.0,
      duration: context.durationNormal,
      child: Padding(
        padding: context.paddingLow,
        child: _couponCardView(context, totalRatio),
      ),
    );
  }

  Card _couponCardView(BuildContext context, double totalRatio) => Card(
        shape: RoundedRectangleBorder(borderRadius: context.lowBorderRadius),
        child: _listTileView(context, totalRatio),
      );

  ListTile _listTileView(BuildContext context, double totalRatio) => ListTile(
        contentPadding: context.paddingNormal,
        leading: ListViewLeading(
            icon: IconConstants.instance!.couponListViewLeading),
        title: BoldText(data: StringConstants.instance!.couponCardTitle),
        subtitle: _subTitlteView(context, totalRatio),
      );

  Column _subTitlteView(BuildContext context, double totalRatio) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _couponMatchRatioColumn(context),
        BoldText(data: "Toplam oran: $totalRatio"),
        context.emptySizedHeightBoxLow3x,
        ImageContainer(context: context)
      ],
    );
  }

  Column _couponMatchRatioColumn(BuildContext context) => Column(
        children: List.generate(
          context.watch<CouponManager>().matchItems.length,
          (index) => _couponMatchRatioView(context, index),
        ),
      );

  Row _couponMatchRatioView(BuildContext context, int index) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _couponMatchView(context, index),
          BoldText(
              data:
                  "Tahmin oranı: ${context.watch<CouponManager>().matchItems[index].oran}"),
        ],
      );

  Row _couponMatchView(BuildContext context, int index) => Row(
        children: [
          SalemBoldText(
              data: context.watch<CouponManager>().matchItems[index].evSahibi ??
                  "EV_SAHIBI_YOK"),
          SalemBoldText(data: " x "),
          SalemBoldText(
            data: context.watch<CouponManager>().matchItems[index].deplasman ??
                "DEPLASMAN_YOK",
          ),
        ],
      );

  void removeMatch(BuildContext context, int index) {
    context
        .read<CouponManager>()
        .removeItem(context.read<CouponManager>().matchItems[index]);
    ScaffoldMessenger.of(context).showSnackBar(showSnackBar(context, index));
  }

  SnackBar showSnackBar(BuildContext context, int _index) => SnackBar(
        content: CustomHeadline6(
          context: context,
          data: "Maç başarıyla silindi !",
          color: Colors.white,
        ),
        duration: context.durationNormal,
        backgroundColor: ColorConstants.instance!.salem,
      );
}
