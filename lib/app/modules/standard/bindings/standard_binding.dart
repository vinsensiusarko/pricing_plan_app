import 'package:get/get.dart';

import '../controllers/standard_controller.dart';

class StandardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StandardController>(
      () => StandardController(),
    );
  }
}
