import 'package:flutter/material.dart';
import '../../../core/constants/icon/icon_constants.dart';
import '../../coupon/view/coupon_view.dart';
import '../../match/view/match_view.dart';
import '../model/tabbar_model.dart';

class TabbarView extends StatelessWidget {
  TabbarView({Key? key}) : super(key: key);

  final List<TabModel> _tabsItem = [
    TabModel(
        title: "Maçlarım",
        icon: IconConstants.instance!.firstTabBar,
        child: MatchView()),
    TabModel(
        title: "Kuponlarım",
        icon: IconConstants.instance!.secondTabBar,
        child: CouponView()),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabsItem.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("halisahavar"),
          centerTitle: false,
          bottom: _buildTabBar(context),
        ),
        body: _buildTabBarView,
      ),
    );
  }

  TabBar _buildTabBar(BuildContext context) => TabBar(
        tabs: List.generate(
          _tabsItem.length,
          (index) => Tab(
            text: _tabsItem[index].title,
            icon: Icon(_tabsItem[index].icon),
          ),
        ),
        indicatorColor: const Color(0xff0e8a31),
      );

  TabBarView get _buildTabBarView =>
      TabBarView(children: _tabsItem.map((e) => e.child).toList());
}
