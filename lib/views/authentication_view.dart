// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/authentication_controller.dart';

class AuthenticationView extends GetView<AuthenticationController> {
  @override
  AuthenticationController controller = Get.put(AuthenticationController());
  AuthenticationView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Authentication')),
      body: Center(
        child: Obx(
          () => controller.isAuthenticated.value
              ? ElevatedButton(
                  onPressed: () {
                    controller.logout();
                  },
                  child: const Text('Logout'),
                )
              : ElevatedButton(
                  onPressed: () {
                    controller.login();
                  },
                  child: const Text('Login'),
                ),
        ),
      ),
    );
  }
}
