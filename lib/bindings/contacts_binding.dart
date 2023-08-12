import 'package:get/get.dart';
import '../controllers/contacts_controller.dart';

class ContactsBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ContactsController());
  }
}
