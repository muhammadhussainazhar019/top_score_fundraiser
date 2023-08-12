import 'package:flutter/material.dart';
import 'package:top_score_fundraiser/utilities/app_constants.dart';

class CustomTextWidget extends StatelessWidget {
  final String widgetText;
  final bool isTransparent;
  const CustomTextWidget(
      {
        super.key,
        required this.isTransparent,
        required this.widgetText
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: AppTheme.getDynamicPadding(16)),
        child: Container(
          padding: isTransparent?
          EdgeInsets.zero:AppTheme.padding,
          decoration: BoxDecoration(
              color: isTransparent?
              Colors.transparent:AppTheme.themeColor,
              borderRadius: BorderRadius.circular(AppTheme.appBaseRadius)
          ),
          width: AppTheme.appWidth,
          child: Text(
            widgetText,
            style: TextStyle(
                color: isTransparent?
                AppTheme.textStylePrimaryColor:AppTheme.textStyleThemeBackgroundColor,
                fontWeight: AppTheme.fontWeight, fontFamily: AppTheme.fontFamily,
                fontSize: AppTheme.getDynamicFontSize(4)),
            textAlign: TextAlign.justify,
          ),
        ),
    );
  }
}