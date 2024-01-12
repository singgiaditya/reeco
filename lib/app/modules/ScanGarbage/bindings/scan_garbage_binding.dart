import 'package:get/get.dart';

import 'package:reeco/app/modules/ScanGarbage/controllers/recommendation_recycle_controller.dart';
import 'package:reeco/app/modules/ScanGarbage/controllers/result_scan_controller.dart';

import '../controllers/scan_garbage_controller.dart';

class ScanGarbageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RecommendationRecycleController>(
      () => RecommendationRecycleController(),
    );
    Get.lazyPut<ResultScanController>(
      () => ResultScanController(),
    );
    Get.lazyPut<ScanGarbageController>(
      () => ScanGarbageController(),
    );
  }
}
