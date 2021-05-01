import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_ui/state/bottom_nav_bar_state.dart';
import 'package:sample_ui/ui/devices.dart';
import 'package:sample_ui/ui/home_screen.dart';
import 'package:sample_ui/ui/widgets/bottom_nav_bar.dart';
import 'package:sample_ui/utils/color_utils.dart';

class HomePage extends StatelessWidget {
  static List<Widget> pages = [
    HomeScreen(),
    Devices()
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BottomNavBarProvider>(
      create: (BuildContext context) => BottomNavBarProvider(),
      child: Consumer<BottomNavBarProvider>(
              builder: (context, provider, child){
                return Scaffold(
                    backgroundColor: ColorUtils.scaffoldBackgroundColor,
                    appBar: AppBar(
                      leading: Transform.scale(
                        scale: 0.5,
                        child: Image.asset("assets/png/LIGHT_MODE/ASSETS (52).png")
                      ),
                      actions: [
                        provider.currentIndex == 0 ? Image.asset("assets/png/DARK_MODE/ASSETS (110).png")
                            : Image.asset("assets/png/DARK_MODE/ASSETS (68).png", color: Colors.blue,)
                      ],
                    ),
                    body: pages[provider.currentIndex],
                    bottomNavigationBar: CustomBottomNavBar(provider)
                );
              },
            )
      );
  }
}
