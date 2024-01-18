import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/scan_garbage_controller.dart';

class ScanGarbageView extends GetView<ScanGarbageController> {
  const ScanGarbageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => controller.isInitialized.value
            ? ScanView(controller: controller)
            : Center(child: CircularProgressIndicator())));
  }
}

class ScanView extends StatelessWidget {
  const ScanView({
    super.key,
    required this.controller,
  });

  final ScanGarbageController controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: Get.mediaQuery.size.width,
            height: Get.mediaQuery.size.height,
            child: CameraPreview(controller.cameraController)),
        SafeArea(
          child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.arrow_back_outlined,
                        color: Colors.white,
                        size: 24,
                      )),
                  controller.isFront.value
                      ? SizedBox(height: 20, width: 20,) : IconButton(
                          onPressed: () {
                            controller.cameraFlashTogle();
                          },
                          icon: Obx(() => Icon(
                                controller.isFlashOn.value
                                    ? Icons.flash_on
                                    : Icons.flash_off,
                                color: Colors.white,
                              )),
                        )
                ],
              )),
        ),
        Center(
            child: CustomPaint(
          painter: BorderPainter(),
          size: Size(
              Get.mediaQuery.size.width - 50, Get.mediaQuery.size.width - 50),
        )),
        Padding(
          padding: const EdgeInsets.only(bottom: 25),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.image_outlined,
                      size: 30,
                      color: Colors.white,
                    )),
                GestureDetector(
                  onTap: () {
                    controller.takePicture();
                  },
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                  ),
                ),
                IconButton(
                    onPressed: () {
                      controller.toggleCameraLens();
                    },
                    icon: Icon(
                      Icons.cameraswitch_outlined,
                      size: 30,
                      color: Colors.white,
                    ))
              ],
            ),
          ),
        )
      ],
    );
  }
}

class BorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double sh = size.height; // for convenient shortage
    double sw = size.width; // for convenient shortage
    double cornerSide = sh * 0.1; // desirable value for corners side

    Paint paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 1.5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    Path path = Path()
      ..moveTo(cornerSide, 0)
      ..quadraticBezierTo(0, 0, 0, cornerSide)
      ..moveTo(0, sh - cornerSide)
      ..quadraticBezierTo(0, sh, cornerSide, sh)
      ..moveTo(sw - cornerSide, sh)
      ..quadraticBezierTo(sw, sh, sw, sh - cornerSide)
      ..moveTo(sw, cornerSide)
      ..quadraticBezierTo(sw, 0, sw - cornerSide, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(BorderPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(BorderPainter oldDelegate) => false;
}
