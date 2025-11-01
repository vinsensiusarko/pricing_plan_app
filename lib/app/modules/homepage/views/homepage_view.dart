import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/homepage_controller.dart';

class HomepageView extends GetView<HomepageController> {
  const HomepageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomepageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HomepageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
