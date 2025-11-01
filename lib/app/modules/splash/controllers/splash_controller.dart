import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

enum UserType {
  free,
  freemium,
  enterprise,
  unknown,
}

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAllNamed(Routes.HOMEPAGE);
    });
  }
}
