import 'package:get/get.dart';
import 'package:reeco/app/modules/Authentication/controllers/register_controller.dart';


class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(
      () => RegisterController(),
    );
  }
}
