import 'package:flutter/material.dart';

class Yctlogo extends StatelessWidget {
  const Yctlogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/logoyct.png",
      height: 200,
    );
  }
}