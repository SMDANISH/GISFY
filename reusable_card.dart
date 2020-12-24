import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // ignore: non_constant_identifier_names
  ReusableCard({@required this.Colour, this.cardChild, this.onPress});
  // ignore: non_constant_identifier_names
  final Color Colour;
  final Widget cardChild;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: Colour, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}



