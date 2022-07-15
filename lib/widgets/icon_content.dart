import 'package:flutter/material.dart';
import '../styles/color.dart';

class iconContent extends StatelessWidget {
  iconContent({ required this.iconsymbol, required this.icontext});

  final IconData iconsymbol;
  final String icontext;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconsymbol,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(icontext, style: labelTextStyle),
      ],
    );
  }
}