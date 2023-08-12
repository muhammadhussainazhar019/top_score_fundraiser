import 'package:get/get.dart';
import '../controllers/barcode_controller.dart';

class BarCodeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(BarCodeController());
  }
}
