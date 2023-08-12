// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/organization_controller.dart';

class OrganizationView extends GetView<OrganizationController> {
  @override
  OrganizationController controller = Get.put(OrganizationController());
  OrganizationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Organization')),
      body: const Center(
        child: Text('Organization Page'),
      ),
    );
  }
}
