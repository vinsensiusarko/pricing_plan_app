import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/freemium_controller.dart';

class FreemiumView extends GetView<FreemiumController> {
  const FreemiumView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FreemiumView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'FreemiumView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
