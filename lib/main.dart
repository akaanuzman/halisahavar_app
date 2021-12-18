import 'package:flutter/material.dart';
import 'features/tabbar/view/tabbar_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Color(0xff0e8a31)
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'halisahavar',
      home: TabbarView()
    );
  }
}
