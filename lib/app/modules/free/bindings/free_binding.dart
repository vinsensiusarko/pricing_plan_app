import 'package:get/get.dart';

import '../controllers/free_controller.dart';

class FreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FreeController>(
      () => FreeController(),
    );
  }
}
