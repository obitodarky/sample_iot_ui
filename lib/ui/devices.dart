import 'package:flutter/material.dart';
import 'package:sample_ui/models/device.dart';
import 'package:sample_ui/models/room.dart';
import 'package:sample_ui/ui/widgets/active_devices_card.dart';
import 'package:sample_ui/ui/widgets/device_card.dart';
import 'package:sample_ui/ui/widgets/room_card.dart';
import 'package:sample_ui/ui/widgets/row_containers.dart';
import 'package:sample_ui/utils/mock_data.dart';

class Devices extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          RowContainers(MockData.deviceRoomList),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8,),
              Text("Devices"),
              SizedBox(height: 8,),
              Container(
                height: MediaQuery.of(context).size.height/1.5,
                child: GridView.builder(
                  itemCount: MockData.deviceList.length,
                  itemBuilder: (BuildContext context, int index){
                    return DeviceCard(MockData.deviceList[index], isRoomScreen: false);
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      crossAxisCount: 2
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
