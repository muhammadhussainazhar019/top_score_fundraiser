import 'package:get/get.dart';

class AuthenticationController extends GetxController {
  var isAuthenticated = false.obs;

  void login() {
    isAuthenticated.value = true;
  }

  void logout() {
    isAuthenticated.value = false;
  }
}
