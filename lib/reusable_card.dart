import 'package:flutter/material.dart';

// as it was repeting so we extracted it out
class ReusableCard extends StatelessWidget {
  ReusableCard(this.colour, this.cardChild);

  // use final in case of the color property it makes this property immutable
  final Color colour; // created a temp color variable
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}