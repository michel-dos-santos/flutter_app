import 'package:flutter/material.dart';

import 'widgets/my_app_bar.dart';
import 'widgets/my_dots_app.dart';
import 'widgets/page_view_app.dart';
import 'widgets/settings_app.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isShowMenu;
  int _currentIndex;

  @override
  void initState() {
    super.initState();
    _isShowMenu = false;
    _currentIndex = 0;
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
              setState(() {
                _isShowMenu = !_isShowMenu;
              });
            },
          ),
          SettingsApp(
            isShowMenu: _isShowMenu,
            top: screenHeigth * .22,
          ),
          PageViewApp(
            isShowMenu: _isShowMenu,
            top: screenHeigth * .22,
            onChanged: (index) {
              setState(() {
                _currentIndex = index;
              });     
            },
          ),
          MyDotsApp(
            isShowMenu: _isShowMenu,
            top: screenHeigth * .68,
            currentIndex: _currentIndex,
          ),
        ],
      ),
    );
  }
}
