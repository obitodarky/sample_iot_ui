import 'package:sample_ui/models/device.dart';
import 'package:sample_ui/models/quick_actions.dart';
import 'package:sample_ui/models/room.dart';

class MockData {
  static final List<Device> deviceList = [
    Device(
        name: "A.C",
        isActive: true,
        activeTime: "3 hours",
        imageUrl: "assets/png/LIGHT_MODE/ASSETS (76).png",
        room: "Study Room"
    ),
    Device(
        name: "Table Lamp",
        isActive: true,
        activeTime: "1 hours",
        imageUrl: "assets/png/LIGHT_MODE/ASSETS (74).png",
        room: "Study Room"
    ),
    Device(
        name: "Television",
        isActive: true,
        activeTime: "1 hours",
        imageUrl: "assets/png/LIGHT_MODE/ASSETS (73).png",
        room: "Study Room"
    ),
    Device(
        name: "Fan",
        isActive: false,
        activeTime: "3 hours",
        imageUrl: "assets/png/LIGHT_MODE/ASSETS (75).png",
        room: "Study Room"
    ),
    Device(
        name: "Mood Light",
        isActive: false,
        activeTime: "30 mins",
        imageUrl: "assets/png/DARK_MODE/ASSETS (129).png",
        room: "Study Room"
    ),
  ];

  static final deviceRoomList = [
    "Master Bedroom",
    "Study Room",
    "Washroom 2"
  ];


  static final List<Room> roomList = [
    Room(
      name: "Master Bedroom",
      deviceCount: 9,
      imageUrl: "assets/png/LIGHT_MODE/ASSETS (70).png",
      activeDevices: 4
    ),
    Room(
      name: "Washroom 2",
      deviceCount: 7,
      imageUrl: "assets/png/LIGHT_MODE/ASSETS (72).png",
      activeDevices: 2
    ),
    Room(
      name: "Study Room",
      deviceCount: 5,
      imageUrl: "assets/png/LIGHT_MODE/ASSETS (71).png",
      activeDevices: 3
    ),
  ];

  static final floorList = [
    "Ground Floor",
    "First Floor",
    "Second Floor",
    "Balcony",
    "Garden"
  ];

  static final onBoardingScreenData_1 = [
    "Relax and Control",
    "Smart Home Controls at your own comfort"
  ];

  static final onBoardingScreenData_2 = [
    "Variety and Modes",
    "Connect to almost every device vat your Smart Home. Customize the modes completely to yourself"
  ];

  static final quickActionsData = [
    QuickActions(
      actionName: "Cleaning",
      imageUrl: "assets/png/DARK_MODE/ASSETS (120).png",
    ),
    QuickActions(
      actionName: "Rise and Shine",
      imageUrl: "assets/png/DARK_MODE/ASSETS (121).png",
      scheduleTime: "8 AM"
    ),
  ];

}