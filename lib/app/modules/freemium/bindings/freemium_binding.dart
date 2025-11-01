import 'package:get/get.dart';

import '../controllers/freemium_controller.dart';

class FreemiumBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FreemiumController>(
      () => FreemiumController(),
    );
  }
}
