import 'package:flutter/material.dart';
import 'package:sample_ui/ui/devices.dart';
import 'package:sample_ui/ui/home_screen.dart';

class BottomNavBarProvider extends ChangeNotifier{
  int _currentIndex = 0;
  List bodyList = [
    HomeScreen(),
    Devices(),
  ];

  get currentIndex => _currentIndex;

  set currentIndex(int index){
    _currentIndex = index;
    notifyListeners();
  }
}