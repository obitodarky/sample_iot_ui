import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_ui/state/bottom_nav_bar_state.dart';
import 'package:sample_ui/ui/widgets/back_button_app_bar.dart';
import 'package:sample_ui/ui/widgets/bottom_nav_bar.dart';
import 'package:sample_ui/ui/widgets/device_card.dart';
import 'package:sample_ui/ui/widgets/room_card.dart';
import 'package:sample_ui/utils/mock_data.dart';

class RoomScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BottomNavBarProvider>(
      create: (context) => BottomNavBarProvider(),
      child: Consumer<BottomNavBarProvider>(
        builder: (context, provider, widget){
          return Scaffold(
            appBar: AppBar(
              leading: CustomBackButton(),
            ),
            bottomNavigationBar: CustomBottomNavBar(provider),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.only(top: 8),
                    width: MediaQuery.of(context).size.width,
                    child: PageView(
                      controller: PageController(
                          viewportFraction: 0.8,
                          initialPage: 2,
                      ),
                      children: getList(),
                    ),
                  ),
                ),
                SizedBox(height: 8,),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 16),
                  child: Text("Devices"),
                ),
                SizedBox(height: 8,),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.builder(
                      itemCount: MockData.deviceList.length,
                      itemBuilder: (BuildContext context, int index){
                        return DeviceCard(MockData.deviceList[index], isRoomScreen: true);
                      },
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                          crossAxisCount: 2
                      ),
                    ),
                  ),
                )
              ],
            )
          );
        },
      ),
    );
  }

  List<Widget> getList(){
    List<Widget> list = [];
    MockData.roomList.forEach((room) {
      list.add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: RoomCard(room, isRoomScreen: true,),
      ));
    });
    return list;
  }

}
