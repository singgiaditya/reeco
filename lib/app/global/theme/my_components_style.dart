import 'package:flutter/material.dart';

import 'my_color.dart';

AppBarTheme myAppBarStyle() => const AppBarTheme(
  centerTitle: true,
  iconTheme: IconThemeData(color: blackColor),
  backgroundColor: Colors.transparent,
  elevation: 0,
);


ElevatedButtonThemeData myElevatedButtonThemeStyle(){
  return ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
      ),
      backgroundColor: MaterialStatePropertyAll(primaryColor)
    )
  );
}

InputDecorationTheme myInputDecorationStyle(){
  return InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
    )
  );
}