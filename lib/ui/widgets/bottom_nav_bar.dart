import 'package:flutter/material.dart';
import 'package:sample_ui/utils/color_utils.dart';

class CustomBottomNavBar extends StatelessWidget {
  final provider;

  CustomBottomNavBar(this.provider);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: ColorUtils.primaryColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: provider.currentIndex == 0 ? Image.asset('assets/png/DARK_MODE/ASSETS (12).png') : Image.asset('assets/png/DARK_MODE/ASSETS (11).png'),
            label: 'Home'
        ),
        BottomNavigationBarItem(
            icon: provider.currentIndex == 1 ? Image.asset('assets/png/DARK_MODE/ASSETS (107).png') : Image.asset('assets/png/DARK_MODE/ASSETS (111).png'),
            label: 'Devices'
        ),
        BottomNavigationBarItem(
            icon: provider.currentIndex == 2 ? Image.asset('assets/png/DARK_MODE/ASSETS (66).png') : Image.asset('assets/png/DARK_MODE/ASSETS (67).png'),
            label: 'Devices'
        ),
      ],
      currentIndex: provider.currentIndex,
      selectedItemColor: ColorUtils.selectedTabBarColor,
      onTap: (int index){
        if(index < 2){
          provider.currentIndex = index;
        }
        print(provider.currentIndex);
      },
    );
  }
}
