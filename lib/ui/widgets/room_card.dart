import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sample_ui/models/room.dart';
import 'package:sample_ui/ui/room_screen.dart';
import 'package:sample_ui/utils/color_utils.dart';

class RoomCard extends StatelessWidget {
  final Room room;
  final isRoomScreen;
  const RoomCard(this.room, {this.isRoomScreen = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
            context, MaterialPageRoute(
            builder: (context) => RoomScreen()
        )
        );
      },
      child: Container(
        padding: const EdgeInsets.only(left: 16.0, top: 16, right: 16),
        width: (MediaQuery.of(context).size.width * 60) / 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: ColorUtils.cardColors,
          image: DecorationImage(
            alignment: Alignment.centerRight,
            image: AssetImage(room.imageUrl ?? "assets/png/DARK_MODE/ASSETS (69).png")
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(room.name, minFontSize: 8, wrapWords: false,),
            AutoSizeText("${room.deviceCount} devices", minFontSize: 8,),
            isRoomScreen ? AutoSizeText('${room.activeDevices} Active Devices', minFontSize: 8,) : SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
