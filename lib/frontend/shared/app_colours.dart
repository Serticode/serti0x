import 'package:flutter/material.dart';

final appColours = AppColours();

class AppColours {
  factory AppColours() => singleInstance;
  AppColours._internal();
  static final AppColours singleInstance = AppColours._internal();

  //!
  final blue = const Color(0xFF1C77FF);
  final purple = const Color(0xFF6420AA);
  final peach = const Color(0xFFFF6464);
  final black = const Color(0XFF0C0C0C);
  final fabBGColourDark = const Color(0XFF171717);
  final secondaryBlack = const Color(0XFF171717);
  final white = const Color(0xFFFFFFFF);
  final bigTextWhite = Colors.white12;

  //! TEXT COLOURS
  final grey50 = Colors.grey.shade50;
  final grey100 = Colors.grey.shade100;
  final grey200 = Colors.grey.shade200;
  final grey300 = Colors.grey.shade300;
  final grey600 = Colors.grey.shade600;
  final grey700 = Colors.grey.shade700;
}
