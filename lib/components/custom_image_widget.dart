import 'package:flutter/material.dart';

class CustomImageWidget extends StatelessWidget {
  final double widgetWidth;
  final double widgetHeight;
  final String widgetAssetPath;
  const CustomImageWidget(
      {
        super.key,
        required this.widgetAssetPath,
        required this.widgetWidth,
        required this.widgetHeight
      });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widgetWidth,
      height: widgetHeight,
      child: Image.asset(widgetAssetPath),
    );
  }
}