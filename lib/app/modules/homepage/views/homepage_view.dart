import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pricing_plan_app/app/core/controller/auth_controller.dart';
import 'package:pricing_plan_app/app/routes/app_pages.dart';

import '../controllers/homepage_controller.dart';

class HomepageView extends GetView<HomepageController> {
  const HomepageView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      builder: (authController) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('HomepageView'),
            centerTitle: true,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Obx(() {
                  if (authController.isPremiumOrHigher) {
                    // Jika Premium atau Enterprise: Tampilkan tombol
                    return ElevatedButton(
                      onPressed: () => Get.toNamed(Routes.STANDARD),
                      child: const Text('Akses Fitur Premium'),
                    );
                  } else {
                    // Jika Free: Tampilkan tombol yang menunjuk ke halaman upgrade
                    return Tooltip(
                      message: 'Upgrade ke Premium untuk membuka fitur ini',
                      child: ElevatedButton.icon(
                        onPressed: () => Get.toNamed('/upgrade-page'),
                        icon: const Icon(Icons.lock),
                        label: const Text('Fitur Premium (Terkunci)'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.shade300,
                        ),
                      ),
                    );
                  }
                }),
              )
            ],
          ),
        );
      }
    );
  }
}
