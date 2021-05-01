import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: (){
          Navigator.pop(context);
        },
        child: Transform.scale(
          scale: 1,
          child: Image.asset("assets/png/DARK_MODE/ASSETS (70).png",),
        ),
      ),
    );
  }
}
