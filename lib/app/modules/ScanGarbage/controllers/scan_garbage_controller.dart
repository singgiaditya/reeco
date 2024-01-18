import 'package:camera/camera.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:reeco/app/routes/app_pages.dart';

class ScanGarbageController extends GetxController {
  late List<CameraDescription> _cameras;
  late CameraController cameraController;
  final isInitialized = false.obs;
  final isFront = false.obs;
  final isFlashOn = false.obs;
  XFile? image;
  

  void initCamera() async {
    WidgetsFlutterBinding.ensureInitialized();
    _cameras = await availableCameras();
    cameraController = CameraController(_cameras.first, ResolutionPreset.max);
    cameraController.setFlashMode(FlashMode.off);
    await cameraController.initialize().then((value) => isInitialized.toggle());
  }

  void reinitCamera(CameraDescription description) async {
    isInitialized.value = false;
    _cameras = await availableCameras();
    cameraController = CameraController(description, ResolutionPreset.max);
    cameraController.setFlashMode(FlashMode.off);
    await cameraController.initialize().then((value) => isInitialized.toggle());
  }
  
  void takePicture()async{
    image = await cameraController.takePicture();
    Get.toNamed(Routes.resultScan);
  }

  void cameraFlashTogle(){
    if (isFlashOn.value) {
      cameraController.setFlashMode(FlashMode.off);
    }else{
      cameraController.setFlashMode(FlashMode.always);
    }
    isFlashOn.toggle();
  }

  

  void toggleCameraLens() {
    CameraDescription newDescription;
    if (!isFront.value) {
      newDescription = _cameras.last;
    }else{
      newDescription = _cameras.first;
    }
    reinitCamera(newDescription);
    isFront.toggle();
  }

  @override
  void onInit() {
    super.onInit();
    initCamera();
  }
}
