import 'package:flutter/material.dart';

import 'my_color.dart';
import 'my_components_style.dart';

class Themes {
  static final myThemes = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: primaryColor,
    appBarTheme: myAppBarStyle(),
    elevatedButtonTheme: myElevatedButtonThemeStyle(),
    inputDecorationTheme: myInputDecorationStyle(),
  );
}