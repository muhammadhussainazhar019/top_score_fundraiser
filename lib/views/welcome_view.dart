// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:top_score_fundraiser/components/custom_button_widget.dart';
import '../components/custom_image_widget.dart';
import '../components/custom_text_widget.dart';
import '../utilities/app_constants.dart';
import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  @override
  WelcomeController controller = Get.put(WelcomeController());
  WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: AppTheme.themeBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: AppTheme.appHeight*.025,),
          CustomImageWidget(
            widgetWidth: AppTheme.appWidth*.20,
            widgetHeight: AppTheme.appHeight*.10,
            widgetAssetPath: AppIcons.logoImagePath,
          ),
          SizedBox(height: AppTheme.appHeight*.025,),
          CustomImageWidget(
            widgetWidth: AppTheme.appWidth,
            widgetHeight: AppTheme.appHeight*.35,
            widgetAssetPath: AppIcons.welcomeImagePath,
          ),
          const CustomTextWidget(
            isTransparent: true,
            widgetText: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a types specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
          ),
          SizedBox(height: AppTheme.appHeight*.025,),
          const CustomTextWidget(
            isTransparent: false,
            widgetText: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem  has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it",
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButtonWidget(
                  isFullWidth: false,
                  buttonText: "Sign In",
                  onTap: (){}
              ),
              CustomButtonWidget(
                  isFullWidth: false,
                  buttonText: "Sign Up",
                  onTap: (){}
              )
            ],
          )
        ],
      ),
    );
  }
}
