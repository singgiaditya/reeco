import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:reeco/app/global/theme/my_theme.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Reeco",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: Themes.myThemes,
    ),
  );
}
