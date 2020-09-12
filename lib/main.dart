import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'pages/home/home_page.dart';
import 'utils/custom_colors.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: CustomColors.customRed,
      statusBarColor: CustomColors.customRed,
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: CustomColors.customRed,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}