import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (splashController) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('SplashView'),
            centerTitle: true,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 40),
              const Center(
                child: Text(
                  'SplashView is working',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
