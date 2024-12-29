import 'package:flutter/material.dart';
import 'package:serti0x/frontend/shared/app_colours.dart';
import 'package:serti0x/frontend/shared/app_strings.dart';
import 'fade_transition.dart';

final appTheme = AppTheme();

class AppTheme {
  factory AppTheme() => singleInstance;
  AppTheme._internal();
  static final AppTheme singleInstance = AppTheme._internal();

  //!
  //!
  //! DARK THEME
  final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,

    //! TRANSITIONS
    pageTransitionsTheme: PageTransitionsTheme(builders: {
      for (final platform in TargetPlatform.values)
        platform: CustomFadeTransitionBuilder(),
    }),

    //!
    scaffoldBackgroundColor: appColours.black,

    //! FONT FAMILY
    fontFamily: appStrings.fontFamily,

    //!
    useMaterial3: false,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: appColours.fabBGColourDark,
      elevation: 40.0,
    ),
  );

  //!
  //!
  //! LIGHT THEME
  final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,

    //! TRANSITIONS
    pageTransitionsTheme: PageTransitionsTheme(builders: {
      for (final platform in TargetPlatform.values)
        platform: CustomFadeTransitionBuilder(),
    }),

    //!
    scaffoldBackgroundColor: appColours.grey50,

    //! FONT FAMILY
    fontFamily: appStrings.fontFamily,

    //!
    useMaterial3: false,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: appColours.white,
      elevation: 40.0,
    ),
  );
}
