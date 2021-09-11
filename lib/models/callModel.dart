import 'package:flutter/cupertino.dart';

class CallModel {
  final String name;
  final String time;
  final IconData leftIcon;
  final IconData rightIcon;
  final String image;

  CallModel({this.leftIcon, this.rightIcon, this.name, this.time, this.image});
}
