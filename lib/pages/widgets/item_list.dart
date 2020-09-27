import 'dart:ui';
import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  final IconData icon;
  final String text;

  const ItemList({Key key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.05,
      child: RaisedButton(
        color: Colors.transparent,
        textColor: Colors.grey,
        highlightColor: Colors.transparent,
        elevation: 0,
        disabledElevation: 0,
        focusElevation: 0,
        highlightElevation: 0,
        hoverElevation: 0,
        splashColor: Colors.red,
        child: Row(
          children: [
            Icon(icon),
            SizedBox(
              width: 15,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}
