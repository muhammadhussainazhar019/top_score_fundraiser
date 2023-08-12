import 'package:get/get.dart';
import 'package:flutter/foundation.dart';
import '../utilities/app_storage.dart';

class SplashController extends GetxController{
  @override
  void onInit() {
    if (kDebugMode) {
      print("Splash Controller Called");
    }
    checkForAccessToken();
    super.onInit();
  }
  checkForAccessToken() async {
    bool? checkForAccessToken = await MyStorage.checkForAccessToken();
    if (kDebugMode) {
      print("CheckForAccessToken Status: $checkForAccessToken");
    }
    Future.delayed(const Duration(seconds: 5),() {
      if(checkForAccessToken == true){
        Get.toNamed("/dashboard");
      }
      else if(checkForAccessToken == false) {
        Get.toNamed("/welcome");
      }
    });
  }
}