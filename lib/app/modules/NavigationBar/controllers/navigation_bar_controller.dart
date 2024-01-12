import 'package:get/get.dart';

class NavigationBarController extends GetxController {
  //TODO: Implement NavigationBarController

  final tabIndex = 0.obs;
  

  void changeTabIndex(int index){
    this.tabIndex.value = index;
  }
}
