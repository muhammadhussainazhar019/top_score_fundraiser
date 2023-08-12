import 'package:get/get.dart';
import '../controllers/timeline_controller.dart';

class TimelineBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(TimelineController());
  }
}