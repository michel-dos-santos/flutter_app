import 'package:flutter/material.dart';

class ItemSetting extends StatelessWidget {
  final IconData icon;
  final String text;

  const ItemSetting({Key key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 0.7, color: Colors.white54),
          bottom: BorderSide(width: 0.7, color: Colors.white54),
        ),
      ),
      child: RaisedButton(
        color: Theme.of(context).primaryColor,
        textColor: Colors.white,
        highlightColor: Colors.transparent,
        elevation: 0,
        disabledElevation: 0,
        focusElevation: 0,
        highlightElevation: 0,
        hoverElevation: 0,
        splashColor: Colors.white24,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
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
            Icon(
              Icons.chevron_right,
              size: 16,
            ),
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}
