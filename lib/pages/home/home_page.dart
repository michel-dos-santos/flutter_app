import 'package:flutter/material.dart';

import 'widgets/my_app_bar.dart';
import 'widgets/my_dots_app.dart';
import 'widgets/page_view_app.dart';
import 'widgets/settings_app.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  bool _isShowMenu;
  AnimationController _controllerAnimation;
  PageController _controllerPageView;

  @override
  void initState() {
    super.initState();
    _isShowMenu = false;
    _controllerAnimation = AnimationController(
      duration: const Duration(milliseconds: 100),
      vsync: this,
    );
    _controllerPageView = PageController();
  }

  @override
  void dispose() {
    _controllerAnimation.dispose();
    super.dispose();
  }

  void onTapShowMenu() {
    setState(() {
      _isShowMenu = !_isShowMenu;
    });
    _playAnimation();
  }

  void _playAnimation() {
    if (_isShowMenu) {
      _controllerAnimation.forward();
    } else {
      _controllerAnimation.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenHeigth = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          MyAppBar(
            isShowMenu: _isShowMenu,
            onTap: () {
              onTapShowMenu();
            },
          ),
          SettingsApp(
            isShowMenu: _isShowMenu,
            top: screenHeigth * .22,
          ),
          PageViewApp(
            isShowMenu: _isShowMenu,
            top: screenHeigth * .22,
            controllerAnimation: _controllerAnimation.view,
            controller: _controllerPageView,
          ),
          MyDotsApp(
            isShowMenu: _isShowMenu,
            top: screenHeigth * .68,
            controller: _controllerPageView,
          ),
        ],
      ),
    );
  }
}
