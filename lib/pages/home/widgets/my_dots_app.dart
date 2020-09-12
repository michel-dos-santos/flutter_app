import 'package:flutter/material.dart';

class MyDotsApp extends StatelessWidget {
  final bool isShowMenu;
  final double top;
  final int currentIndex;

  Color getColor(int index) {
    return currentIndex == index ? Colors.white : Colors.white38;
  }

  const MyDotsApp({Key key, this.isShowMenu, this.top, this.currentIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 300),
        opacity: isShowMenu ? 0 : 1,
        child: Row(
          children: [
            AnimatedContainer(
              duration: Duration(microseconds: 10),
              height: 7,
              width: 7,
              decoration:
                  BoxDecoration(color: getColor(0), shape: BoxShape.circle),
            ),
            SizedBox(
              width: 8,
            ),
            AnimatedContainer(
              duration: Duration(microseconds: 10),
              height: 7,
              width: 7,
              decoration:
                  BoxDecoration(color: getColor(1), shape: BoxShape.circle),
            ),
            SizedBox(
              width: 8,
            ),
            AnimatedContainer(
              duration: Duration(microseconds: 10),
              height: 7,
              width: 7,
              decoration:
                  BoxDecoration(color: getColor(2), shape: BoxShape.circle),
            ),
            SizedBox(
              width: 8,
            ),
            AnimatedContainer(
              duration: Duration(microseconds: 10),
              height: 7,
              width: 7,
              decoration:
                  BoxDecoration(color: getColor(3), shape: BoxShape.circle),
            ),
            SizedBox(
              width: 8,
            ),
            AnimatedContainer(
              duration: Duration(microseconds: 10),
              height: 7,
              width: 7,
              decoration:
                  BoxDecoration(color: getColor(4), shape: BoxShape.circle),
            ),
            SizedBox(
              width: 8,
            ),
            AnimatedContainer(
              duration: Duration(microseconds: 10),
              height: 7,
              width: 7,
              decoration:
                  BoxDecoration(color: getColor(5), shape: BoxShape.circle),
            ),
            SizedBox(
              width: 8,
            ),
            AnimatedContainer(
              duration: Duration(microseconds: 10),
              height: 7,
              width: 7,
              decoration:
                  BoxDecoration(color: getColor(6), shape: BoxShape.circle),
            ),
            SizedBox(
              width: 8,
            ),
            AnimatedContainer(
              duration: Duration(microseconds: 10),
              height: 7,
              width: 7,
              decoration:
                  BoxDecoration(color: getColor(7), shape: BoxShape.circle),
            ),
            SizedBox(
              width: 8,
            ),
            AnimatedContainer(
              duration: Duration(microseconds: 10),
              height: 7,
              width: 7,
              decoration:
                  BoxDecoration(color: getColor(8), shape: BoxShape.circle),
            ),
            SizedBox(
              width: 8,
            ),
            AnimatedContainer(
              duration: Duration(microseconds: 10),
              height: 7,
              width: 7,
              decoration:
                  BoxDecoration(color: getColor(9), shape: BoxShape.circle),
            ),
            SizedBox(
              width: 8,
            ),
            AnimatedContainer(
              duration: Duration(microseconds: 10),
              height: 7,
              width: 7,
              decoration:
                  BoxDecoration(color: getColor(10), shape: BoxShape.circle),
            ),
            SizedBox(
              width: 8,
            ),
            AnimatedContainer(
              duration: Duration(microseconds: 10),
              height: 7,
              width: 7,
              decoration:
                  BoxDecoration(color: getColor(11), shape: BoxShape.circle),
            ),
            SizedBox(
              width: 8,
            ),
            AnimatedContainer(
              duration: Duration(microseconds: 10),
              height: 7,
              width: 7,
              decoration:
                  BoxDecoration(color: getColor(12), shape: BoxShape.circle),
            ),
          ],
        ),
      ),
    );
  }
}
