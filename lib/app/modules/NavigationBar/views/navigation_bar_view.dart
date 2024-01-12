import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:reeco/app/global/theme/my_color.dart';
import 'package:reeco/app/global/theme/my_text_style.dart';
import 'package:reeco/app/routes/app_pages.dart';

import '../../home/views/home_view.dart';
import '../controllers/navigation_bar_controller.dart';

class NavigationBarView extends GetView<NavigationBarController> {
  const NavigationBarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<IconData> iconList = [
      Icons.home_outlined,
      Icons.article_outlined,
      Icons.currency_exchange_outlined,
      Icons.account_circle_outlined,
    ];
    List<String> labelIconList = ["Home", "History", "Point", "Account"];
    List<Widget> tabPage = [
      HomeView(),
      Center(child: Text("History")),
      Center(child: Text("Point")),
      Center(child: Text("Account")),
    ];
    return Scaffold(
      body: Obx(() => tabPage[controller.tabIndex.value]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.resultScan);
        },
        child: Icon(Icons.crop_free_sharp),
        backgroundColor: primaryColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Obx(() => AnimatedBottomNavigationBar.builder(
            itemCount: 4,
            tabBuilder: (int index, bool isActive) {
              final color = isActive ? Colors.white : Colors.white60;
              return Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    iconList[index],
                    size: 24,
                    color: color,
                  ),
                  const SizedBox(height: 4),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        "${labelIconList[index]}",
                        style: textBodyS(color: color),
                      ))
                ],
              );
            },
            notchMargin: 12,
            height: 70,
            splashSpeedInMilliseconds: 250,
            backgroundColor: primaryColor,
            activeIndex: controller.tabIndex.value,
            notchSmoothness: NotchSmoothness.softEdge,
            gapLocation: GapLocation.center,
            onTap: (index) {
              controller.changeTabIndex(index);
            },
          )),
    );
  }
}
