import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: backgroundColor,
  bottomNavigationBarTheme:
      const BottomNavigationBarThemeData(backgroundColor: grey100),
  appBarTheme: const AppBarTheme(
    color: backgroundColor,
    systemOverlayStyle: SystemUiOverlayStyle.dark,
  ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
      .copyWith(background: backgroundColor),
);
ThemeData darkMode = ThemeData(
  colorScheme: ColorScheme.fromSwatch()
      .copyWith(secondary: Colors.blue, brightness: Brightness.dark),
  scaffoldBackgroundColor: grey1100,
  bottomNavigationBarTheme:
      const BottomNavigationBarThemeData(backgroundColor: grey1000),
  appBarTheme: const AppBarTheme(
    // ignore: deprecated_member_use
    color: grey1100, systemOverlayStyle: SystemUiOverlayStyle.light,
  ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
);
