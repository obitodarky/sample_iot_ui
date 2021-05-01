import 'package:flutter/material.dart';

class HueSelectionContainer extends StatelessWidget {
  final Color color;

  HueSelectionContainer(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 56,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30)
      ),
    );
  }
}
