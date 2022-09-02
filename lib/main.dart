import 'package:flutter/material.dart';

import 'helper/constant.dart';
import 'views/home_view/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Contancts App',
      themeMode: ThemeMode.dark,
      theme: ThemeData(
          primaryColor: XColors.black1,
          highlightColor: XColors.black1,
          splashColor: XColors.black1),
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}
