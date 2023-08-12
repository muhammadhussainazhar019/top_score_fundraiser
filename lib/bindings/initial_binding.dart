import 'package:get/get.dart';
import '../controllers/splash_controller.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    // Initialize and provide dependencies here
    Get.put(SplashController());
    // Add more dependency initializations as needed
  }
}
