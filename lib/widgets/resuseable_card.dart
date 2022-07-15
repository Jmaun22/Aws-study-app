import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard(
      {required this.colour, required this.cardChild, required this.tapOnIcon});

  final Color colour;
  final Widget cardChild;
  final void Function()? tapOnIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapOnIcon,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
      ),
    );
  }
}
