// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  @override
  DashboardController controller = Get.put(DashboardController());
  DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Players'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Reports'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}
