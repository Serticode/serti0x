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
  final black = const Color(0XFF171717);
  final white = const Color(0xFFFFFFFF);

  //! TEXT COLOURS
  final grey200 = const Color(0xFFEAECF0);
  final grey300 = const Color(0xFFD0D5DD);
  final grey500 = const Color(0xFF667085);
  final grey600 = const Color(0xFF475467);
  final grey700 = const Color(0xFF344054);
  final grey900 = const Color(0xFF101828);
}
