import 'package:get/get.dart';
import '../controllers/organization_controller.dart';

class OrganizationBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(OrganizationController());
  }
}