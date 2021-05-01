import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sample_ui/ui/widgets/active_devices_card.dart';
import 'package:sample_ui/ui/widgets/quick_actions_card.dart';
import 'package:sample_ui/ui/widgets/room_card.dart';
import 'package:sample_ui/ui/widgets/row_containers.dart';
import 'package:sample_ui/utils/color_utils.dart';
import 'package:sample_ui/utils/mock_data.dart';

class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: RowContainers(MockData.floorList),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: AutoSizeText(
              "Rooms",
            ),
          ),
          Expanded(
            flex: 2,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemCount: MockData.roomList.length + 1,
              itemBuilder: (BuildContext context, int index) {
                if (index < MockData.roomList.length) {
                  return RoomCard(MockData.roomList[index]);
                }
                return Container(
                  padding: const EdgeInsets.only(left: 16.0, top: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: ColorUtils.cardColors,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        "Add new room",
                        minFontSize: 8,
                        wrapWords: false,
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(16),
                        alignment: Alignment(1, 1),
                        child:
                            Image.asset('assets/png/DARK_MODE/ASSETS (68).png'),
                      ),
                    ],
                  ),
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 8,
                childAspectRatio: 6 / 10,
                mainAxisSpacing: 8,
                crossAxisCount: 2,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, bottom: 8),
            child: AutoSizeText(
              "Active Devices",
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: MockData.deviceList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ActiveDevicesCard(MockData.deviceList[index]);
                },
                separatorBuilder: (context, index) => SizedBox(
                  width: 8,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8),
            child: AutoSizeText(
              "Quick Action",
              minFontSize: 8,
            ),
          ),
          Expanded(
            flex: 1,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemCount: MockData.quickActionsData.length,
              itemBuilder: (BuildContext context, int index) {
                return QuickActionsCard(MockData.quickActionsData[index]);
              },
              separatorBuilder: (context, index) => SizedBox(
                width: 8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
