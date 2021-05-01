import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_ui/ui/widgets/back_button_app_bar.dart';
import 'package:sample_ui/ui/widgets/hue_selection_container.dart';
import 'package:sample_ui/utils/color_utils.dart';

class DeviceRemote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomBackButton(),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment(1.38, -0.75),
            image: AssetImage('assets/png/DARK_MODE/ASSETS (7).png'),
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Mood Light"),
            Text("Study Room"),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 24,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: ColorUtils.cardColors
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: (MediaQuery.of(context).size.height * 25) / 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.blue
                            ),
                            child: Image.asset("assets/png/LIGHT_MODE/ASSETS (12).png"),
                            alignment: Alignment.topCenter,
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Bright"),
                          Text("Dim"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/png/DARK_MODE/ASSETS (83).png"),
                  Image.asset("assets/png/DARK_MODE/ASSETS (82).png"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 8),
              child: Text("Select Hue"),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: _hueSelection(context),
              ),
            ),
          ],
        ),
      )
    );
  }

  List _hueSelection(BuildContext context){
    List<Widget> hueList = [];
    for(int i = 1; i < ColorUtils.hueSelectionColorList.length; i++){
      hueList.add(HueSelectionContainer(ColorUtils.hueSelectionColorList[i]));
    }
    return hueList;
  }
}
