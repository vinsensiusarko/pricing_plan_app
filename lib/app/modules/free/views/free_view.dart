import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/free_controller.dart';

class FreeView extends GetView<FreeController> {
  const FreeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FreeView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'FreeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
