import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sample_ui/models/device.dart';
import 'package:sample_ui/ui/device_remote.dart';
import 'package:sample_ui/utils/color_utils.dart';

class DeviceCard extends StatelessWidget {
  final Device device;
  final bool isRoomScreen;

  DeviceCard(this.device, {@required this.isRoomScreen});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      height: MediaQuery.of(context).size.height/4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: ColorUtils.cardColors,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(device.name, style: TextStyle(fontWeight: FontWeight.w600),),
                  AutoSizeText(device.room),
                ],
              ),
              Spacer(),
              Image.asset(device.isActive ? 'assets/png/LIGHT_MODE/ASSETS (27).png': 'assets/png/DARK_MODE/ASSETS (78).png', height: 32,)
            ],
          ),
          Spacer(),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => DeviceRemote()));
          },child: Image.asset(device.imageUrl, width: 62, height: 62)),
          if(isRoomScreen) Spacer(),
          if(!isRoomScreen) ...[ SizedBox(height: 8,), AutoSizeText(device.isActive ? 'On for ${device.activeTime}' : 'Last used ${device.activeTime} ago'), Spacer()],
        ],
      ),
    );
  }
}
