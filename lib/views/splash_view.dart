// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/custom_image_widget.dart';
import '../controllers/splash_controller.dart';
import '../utilities/app_constants.dart';

class SplashView extends GetView<SplashController> {
  @override
  SplashController controller = Get.put(SplashController());
  SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: null,
          backgroundColor: AppTheme.themeBackgroundColor,
          body: Center(
              child: CustomImageWidget(
                widgetWidth: AppTheme.appWidth*.70,
                widgetHeight: AppTheme.appHeight*.40,
                widgetAssetPath: AppIcons.logoImagePath,
              ),
          )
    );
  }
}
