import 'package:flutter/material.dart';

class CardApp extends StatelessWidget {
  final String text;

  const CardApp({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}
