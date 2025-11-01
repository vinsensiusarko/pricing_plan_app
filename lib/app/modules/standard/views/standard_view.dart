import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/standard_controller.dart';

class StandardView extends GetView<StandardController> {
  const StandardView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StandardView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'StandardView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
