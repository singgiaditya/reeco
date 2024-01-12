import 'package:flutter/material.dart';

import 'package:get/get.dart';


import '../controllers/scan_garbage_controller.dart';

class ScanGarbageView extends GetView<ScanGarbageController> {
  const ScanGarbageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: const Center(
        child: Text(
          'ScanGarbageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
