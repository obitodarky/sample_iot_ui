import 'package:flutter/material.dart';
import 'package:sample_ui/models/device.dart';
import 'package:sample_ui/utils/color_utils.dart';

class ActiveDevicesCard extends StatelessWidget {
  final Device device;

  const ActiveDevicesCard(this.device);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 6, horizontal: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: ColorUtils.cardColors,
          ),
          width: 72,
          height: 72,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset(device.isActive ? 'assets/png/LIGHT_MODE/ASSETS (27).png': 'assets/png/DARK_MODE/ASSETS (78).png', height: 16,),
              SizedBox(height: 8,),
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(device.imageUrl, height: 32, width: 32,),
              ),
            ],
          )
        ),
        Text(device.name, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
        Text(device.room, style: TextStyle(fontSize: 10),)
      ],
    );
  }
}
