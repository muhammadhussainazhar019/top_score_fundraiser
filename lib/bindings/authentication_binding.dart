import 'package:get/get.dart';
import '../controllers/authentication_controller.dart';

class AuthenticationBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AuthenticationController());
  }
}
