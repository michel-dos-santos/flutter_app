import 'package:flutter/material.dart';
import 'package:flutter_app/pages/widgets/smooth_page_indicator/effects/worm_effect.dart';
import 'package:flutter_app/pages/widgets/smooth_page_indicator/smooth_page_indicator.dart';

class MyDotsApp extends StatelessWidget {
  final bool isShowMenu;
  final double top;
  final PageController controller;
  final int count;

  MyDotsApp({Key key, this.isShowMenu, this.top, this.controller, this.count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 100),
        opacity: isShowMenu ? 0 : 1,
        child: SmoothPageIndicator(
          controller: controller,
          count: count,
          effect: WormEffect(
            dotWidth: 8,
            dotHeight: 8,
            dotColor: Colors.white54,
            activeDotColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
