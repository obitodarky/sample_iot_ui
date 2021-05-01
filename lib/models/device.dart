class Device{
  final String name;
  final String room;
  final String activeTime; //use conditionals for last used and active since
  final bool isActive;
  final String imageUrl;

  Device({this.name, this.room, this.activeTime, this.isActive, this.imageUrl});
}