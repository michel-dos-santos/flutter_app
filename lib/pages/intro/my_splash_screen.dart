import 'package:flare_splash_screen/flare_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home/home_page.dart';

class MySplashScreen extends StatefulWidget {
  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  bool _isLoading = true;

  @override
  void initState() {
    Future.delayed(Duration(seconds: 5)).then((_) => setState(() {
          _isLoading = false;
        }));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreen.navigate(
      name: 'assets/intro.flr',
      next: (context) => HomePage(),
      startAnimation: 'intro',
      loopAnimation: 'intro',
      isLoading: _isLoading,
      endAnimation: 'intro',
      height: 300,
      width: 300,
    );
  }
}