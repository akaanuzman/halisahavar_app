import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'features/tabbar/view/tabbar_view.dart';
import 'product/manager/coupon_manager.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<CouponManager>(
              create: (context) => CouponManager())
        ],
        child: const MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xff0e8a31)),
      ),
      debugShowCheckedModeBanner: false,
      title: 'halisahavar',
      home: TabbarView(),
    );
  }
}
